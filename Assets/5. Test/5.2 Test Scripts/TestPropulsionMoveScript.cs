using UnityEngine;

public class TestPropulsionMoveScript : MonoBehaviour
{
    public Transform playerTransform;
    public float rotationSpeed = 90f;      // Grados por segundo
    public float movementSpeed = 5f;       // Unidades por segundo

    // Variables para almacenar las entradas
    private float rotationInput = 0f;
    private float movementInput = 0f;
    private float strafeInput = 0f;

    void Update()
    {
        // Resetear inputs cada frame
        rotationInput = 0f;
        movementInput = 0f;
        strafeInput = 0f;

        // === ROTACIÓN ===
        // Girar a la derecha (W o DOWN)
        if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.DownArrow))
            rotationInput = 1f;

        // Girar a la izquierda (UP o S)
        if (Input.GetKey(KeyCode.UpArrow) || Input.GetKey(KeyCode.S))
            rotationInput -= 1f;

        // === MOVIMIENTO HACIA ADELANTE/ATRÁS ===
        // Avanzar hacia adelante (W + UP simultáneamente)
        if (Input.GetKey(KeyCode.W) && Input.GetKey(KeyCode.UpArrow))
            movementInput += 1f;

        // Avanzar hacia atrás (S + DOWN simultáneamente)
        if (Input.GetKey(KeyCode.S) && Input.GetKey(KeyCode.DownArrow))
            movementInput -= 1f;

        // === MOVIMIENTO LATERAL (STRAFE) ===
        // Moverse a la derecha (D o RIGHT)
        if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow))
            strafeInput += 1f;

        // Moverse a la izquierda (A o LEFT)
        if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow))
            strafeInput -= 1f;

        // Aplicar rotación
        if (rotationInput != 0)
        {
            float rotationAmount = rotationSpeed * rotationInput * Time.deltaTime;
            playerTransform.Rotate(0, rotationAmount, 0);
        }

        // Calcular dirección de movimiento
        Vector3 movement = Vector3.zero;

        // Movimiento adelante/atrás (en dirección hacia donde mira el personaje)
        if (movementInput != 0)
        {
            movement += playerTransform.forward * movementInput;
        }

        // Movimiento lateral (strafe)
        if (strafeInput != 0)
        {
            movement += playerTransform.right * strafeInput;
        }

        // Normalizar para mantener velocidad constante en diagonales
        if (movement.magnitude > 1f)
        {
            movement.Normalize();
        }

        // Aplicar movimiento
        if (movement != Vector3.zero)
        {
            playerTransform.position += movement * movementSpeed * Time.deltaTime;
        }

        // Opcional: Debug para ver valores
        Debug.Log($"Rot: {rotationInput}, Move: {movementInput}, Strafe: {strafeInput}");
    }
}

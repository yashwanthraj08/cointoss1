namespace QuantumCoinToss {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Convert;

    // Generates a random bit (0 or 1) using a qubit
    operation QuantumCoinToss() : String {
        use q = Qubit(); // Allocate a qubit
        H(q);            // Put the qubit into superposition
        let result = M(q); // Measure the qubit
        Reset(q);         // Reset the qubit to |0>
        return result == Zero ? "Heads" | "Tails"; // Map measurement to "Heads" or "Tails"
    }

    @EntryPoint()
    operation Main() : Unit {
        let outcome = QuantumCoinToss();
        Message($"The result of the quantum coin toss is: {outcome}");
    }
}

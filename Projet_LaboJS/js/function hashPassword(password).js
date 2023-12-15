function hashPassword(password) {
  // Utilisez l'algorithme de hachage préféré ici (ex. SHA256)
  return crypto.createHash('sha256').update(password).digest('hex');
}

interface class TrackableEntity {
  int id;
  DateTime createdAt;
  DateTime? lastUpdateAt;
  int createdBy;
  int? lastUpdatedBy;

  TrackableEntity(this.id, this.createdAt, this.lastUpdateAt, this.createdBy,
      this.lastUpdatedBy);
}

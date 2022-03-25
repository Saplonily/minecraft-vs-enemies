/// @description CardSetType(Card,WeaponId)
/// @param Card
/// @param WeaponId
function CardSetWeapon(card, Weapon) {
	var Card = card;
	Card.Weapon = Weapon;
	Card.Price = GetWeaponPrice(Weapon);
	Card.MaxCD = GetWeaponMaxCd(Weapon);
	Card.Sprite = GetWeaponSprite(Weapon);



}

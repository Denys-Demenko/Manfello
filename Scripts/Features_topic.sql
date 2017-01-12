DECLARE @OldFeaturesTopicIds TABLE (Id int);
INSERT INTO @OldFeaturesTopicIds SELECT Id FROM Topic WHERE SystemName = 'Features';
delete from Topic where Id IN (select Id from @OldFeaturesTopicIds)
delete from LocalizedProperty where LocaleKeyGroup = 'Topic' and EntityId IN (select Id from @OldFeaturesTopicIds)

INSERT INTO [dbo].[Topic] ([SystemName],[IncludeInSitemap],[IsPasswordProtected],[Password],[Title],[MetaKeywords],[MetaDescription],[MetaTitle],[LimitedToStores],[RenderAsWidget],[WidgetZone],[WidgetShowTitle],[WidgetBordered],[Priority],[WidgetWrapContent],[TitleTag],[Body])
VALUES ('Features', 0, 0, NULL, '100% Гарантія якості, а також', NULL, NULL, NULL, 0, 1, 'home_page_bottom', 1, 0, 0, 1, 'h1','<table border="0" cellpadding="0" cellspacing="0" class="table table-non-bordered" style="width: 100%;">
	<tbody>
		<tr>
			<td style="width: 3%"><span class="fa fa-fresh" style=";font-size:25px;"></span></td>
			<td style="width: 47%">Торти виготовляються лише з натуральних та екологічно чистих інгридієнтів. Ми не використовуємо кондитерські напівфабрикати, стабілізатори та консерванти!</td>
			<td style="width: 3%"><span class="fa fa-cake" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Торт можна виготовити за Вашими індивідуальними побажаннями та дизайном!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-delivery" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Безкоштовна доставка! Ми привозимо вчасно!</td>
			<td style="width: 3%"><span class="fa fa-credit-card" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Безготівкова зручна оплата! Замовлення та оплата торта безпосередньо з дивану!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-mix" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Наші торти виготовляються виключно вручну, вони робляться у день замовлення професійними кондитерами та декораторами!</td>
			<td style="width: 3%"><span class="fa fa-like" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Нам більше року и купа відгуків!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-clock" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Жодної націнки за термінове замовлення! Ваш торт буде у Вас за 24 години!</td>
			<td style="width: 3%"><span class="fa fa-castle" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Виготовляємо торти будь-якої складності. У нас працюють кращі кондитери! Ви бажаєте найкращий торт і ми його для Вас зробимо!</td>
		</tr>
	</tbody>
</table>')

declare @featuresId as int = (select id from topic where SystemName = 'Features');
declare @engLangId as int = 1;
declare @ukrLangId as int = 2;
declare @rusLangId as int = 3;

DELETE FROM [LocalizedProperty] WHERE EntityId=@featuresId and LocaleKeyGroup = 'Topic'

INSERT INTO [LocalizedProperty] ([EntityId],[LanguageId],[LocaleKeyGroup],[LocaleKey],[LocaleValue]) VALUES (@featuresId, @engLangId, 'Topic','Title', '100% quality is guaranteed. And also')
INSERT INTO [LocalizedProperty] ([EntityId],[LanguageId],[LocaleKeyGroup],[LocaleKey],[LocaleValue]) VALUES (@featuresId, @ukrLangId, 'Topic','Title', '100% Гарантія якості, а також')
INSERT INTO [LocalizedProperty] ([EntityId],[LanguageId],[LocaleKeyGroup],[LocaleKey],[LocaleValue]) VALUES (@featuresId, @rusLangId, 'Topic','Title', '100% Гарантия качества, а также')

INSERT INTO [LocalizedProperty] ([EntityId],[LanguageId],[LocaleKeyGroup],[LocaleKey],[LocaleValue])
VALUES (@featuresId,@engLangId,'Topic','Body', '<table border="0" cellpadding="0" cellspacing="0" class="table table-non-bordered" style="width: 100%;">
	<tbody>
		<tr>
			<td style="width: 3%"><span class="fa fa-fresh" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Cakes are baked with natural and ecologically cleared ingridients only. We are not used confectionery half-stuffs, stabilizers and preservatives!</td>
			<td style="width: 3%"><span class="fa fa-cake" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">It is possible to create a cake by Your own design and needs!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-delivery" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Free delivery! We will be in time!</td>
			<td style="width: 3%"><span class="fa fa-credit-card" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Cashless comfort payment! Order and payment of Your cake is done directly from Your sofa!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-mix" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">All our cakes are hand-made, they are produced on a day of an order by professional confectioners and decorators!</td>
			<td style="width: 3%"><span class="fa fa-like" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">We work more than a year and have a lot of feedbacks!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-clock" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">No over-price for urgent order! Your cake will be delivered in 24 hours!</td>
			<td style="width: 3%"><span class="fa fa-castle" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">We bake cakes of any difficulty. Best confectioners work for us! You want the best cake and we will do it for You!</td>
		</tr>
	</tbody>
</table>')

INSERT INTO [LocalizedProperty] ([EntityId],[LanguageId],[LocaleKeyGroup],[LocaleKey],[LocaleValue])
VALUES (@featuresId,@ukrLangId,'Topic','Body', '<table border="0" cellpadding="0" cellspacing="0" class="table table-non-bordered" style="width: 100%;">
	<tbody>
		<tr>
			<td style="width: 3%"><span class="fa fa-fresh" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Торти виготовляються лише з натуральних та екологічно чистих інгридієнтів. Ми не використовуємо кондитерські напівфабрикати, стабілізатори та консерванти!</td>
			<td style="width: 3%"><span class="fa fa-cake" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Торт можна виготовити за Вашими індивідуальними побажаннями та дизайном!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-delivery" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Безкоштовна доставка! Ми привозимо вчасно!</td>
			<td style="width: 3%"><span class="fa fa-credit-card" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Безготівкова зручна оплата! Замовлення та оплата торта безпосередньо з дивану!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-mix" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Наші торти виготовляються виключно вручну, вони робляться у день замовлення професійними кондитерами та декораторами!</td>
			<td style="width: 3%"><span class="fa fa-like" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Нам більше року и купа відгуків!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-clock" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Жодної націнки за термінове замовлення! Ваш торт буде у вас за 24 години!</td>
			<td style="width: 3%"><span class="fa fa-castle" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Виготовляємо торти будь-якої складності. У нас працюють кращі кондитери! Ви бажаєте найкращий торт і ми його для Вас зробимо!</td>
		</tr>
	</tbody>
</table>')

INSERT INTO [LocalizedProperty] ([EntityId],[LanguageId],[LocaleKeyGroup],[LocaleKey],[LocaleValue])
VALUES (@featuresId,@rusLangId,'Topic','Body', '<table border="0" cellpadding="0" cellspacing="0" class="table table-non-bordered" style="width: 100%;">
	<tbody>
		<tr>
			<td style="width: 3%"><span class="fa fa-fresh" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Торты изготавливаются только из натуральних и екологически чистих ингридиентов. Мы не используем кондитерские полуфабрикати, стабилизаторы и консерванты!</td>
			<td style="width: 3%"><span class="fa fa-cake" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Торт можно сделать по Вашим индивидуальным пожеланиям и дизайном!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-delivery" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Бесплатная доставка! Мы привезем вовремя!</td>
			<td style="width: 3%"><span class="fa fa-credit-card" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Безналичная удобная оплата! Заказ и оплата торта прямо с дивана!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-mix" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Наши торты изготавливаются исключительно вручную, они делаются в день заказа профессиональными кондитерами и декораторами!</td>
			<td style="width: 3%"><span class="fa fa-like" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Нам больше года и море отзывов!</td>
		</tr>
		<tr>
			<td style="width: 3%"><span class="fa fa-clock" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Никакой наценки за срочный заказ! Ваш торт будет у Вас через 24 часа!</td>
			<td style="width: 3%"><span class="fa fa-castle" style="color: #0088cc;font-size:25px;"></span></td>
			<td style="width: 47%">Готовим торты любой сложности. У нас работают лучшие кондитери! Вы желаете лучший торт и мы его для Вас сделаем!</td>
		</tr>
	</tbody>
</table>')
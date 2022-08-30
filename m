Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4F05A620E
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Aug 2022 13:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95604414C5;
	Tue, 30 Aug 2022 11:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95604414C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTmNAR0rQpkz; Tue, 30 Aug 2022 11:36:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0897041674;
	Tue, 30 Aug 2022 11:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0897041674
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 072D01BF5F6
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 11:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C70D94157A
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 11:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C70D94157A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L_BK0HG1z_up for <devel@linuxdriverproject.org>;
 Tue, 30 Aug 2022 11:35:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5552414E4
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5552414E4
 for <devel@driverdev.osuosl.org>; Tue, 30 Aug 2022 11:35:57 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id w8so6055668lft.12
 for <devel@driverdev.osuosl.org>; Tue, 30 Aug 2022 04:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc;
 bh=nrkgH02o2Rcq15VakJfrbQDQa/xxZur4E42yyaQ4r1Y=;
 b=1wXKeLLORVPb5AwocpEW8gODtezXrja8B6URb7v0ugs7QA5YtDoIJpyRI2d3Uf6Crl
 7y80fa8wuX618HBdNTjVDZguicB0jX73EeLrsJFacamMO478/T/ku0iXa4HR2Ai/Z95t
 pVkKThAzB2cAGqkkA43yr7Y6oj8XhhEBH3rOxW0UmeACkHsfS2ompDKOKXBfb+bLhuLE
 lGUtSOsn5Z2flJnplJMkZ1KO0wXzCFjxmJn88qFNWRnlsf4r0oNLKnyKOOre+2fR2sVX
 4TTETMrjZ6KflB/0l1mO5ZBVezlOo0Dj6uBn5n0EVvBg5lq/bgPLwWWdHZ+9bjb8Lxil
 kczQ==
X-Gm-Message-State: ACgBeo3FeAy1uss5v7QVVVwW1fLlN+1YdHVhHTQlpr84n+G7XwzjoqWp
 NAzBHesWK49IKspHKj5XpC6CjBoemVbfg/SkKBM=
X-Google-Smtp-Source: AA6agR4FgVlzepKppNvOpFacHtLMN96ndWX6BNmrl99xi6ZP6SLhUUA5x6u6p/vaZWSINEMUo9L7l2LVGVD0nKE8mh8=
X-Received: by 2002:a05:6512:1044:b0:48b:49b1:cc85 with SMTP id
 c4-20020a056512104400b0048b49b1cc85mr7841691lfb.57.1661859355597; Tue, 30 Aug
 2022 04:35:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:2346:0:0:0:0 with HTTP; Tue, 30 Aug 2022 04:35:54
 -0700 (PDT)
From: "Mrs. Cristalina Georgieva" <lucaphilippalbinlucaphilippalb@gmail.com>
Date: Tue, 30 Aug 2022 12:35:54 +0100
Message-ID: <CAJ3jV+1xW9gQdBXEX_fnSdqhyE-_XSAXxAOwNmfgbNZYX2F0Ag@mail.gmail.com>
Subject: hi
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc;
 bh=nrkgH02o2Rcq15VakJfrbQDQa/xxZur4E42yyaQ4r1Y=;
 b=PSbSenyW1/4WkvAWw9VgbLw56otw6k6QL5kdFaSeNyv+NO41YGVE1xs3sbf42YU1gI
 lf/SrCUJ8zsX9HzOfn13wkrhRuxk6u+9MLcJmayt6R6D2MAilPEkgAivWAi57DEdX1Tb
 meUJCCpNKMqCObGGc2+Rxr2rsHp5xeiskI1JR4Ur55U8Hht9XwNFBNa6GeDRX4Th4Knn
 WAmwJZPCrV15j+LSMBuxyxsmaOuiGbZ5lRiCSqy820VScZtA0YwGeD3wWsKiZUxhm8Yg
 b1HOomhGdEfoCAH6xaofjcu1/TqKq142dEBKNaEr2P38HPSpvoZfsJYkXaM0XPJy0vCP
 7IHg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=PSbSenyW
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: mrtonyelumelu98@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

5Zu96Zqb6YCa6LKo5Z+66YeRIChJTUYpDQrlm73pmpvlgrXli5nnrqHnkIboqrINCu+8gzE5MDDj
gIFBVi5EVeekvumVtw0KDQpJLk0uRi4g44OH44Kj44Os44Kv44K/44O844Gu5YWs5byP6Zu75a2Q
44Oh44O844OrIOOCouODieODrOOCueOBuOOCiOOBhuOBk+OBneOAguOCr+ODquOCueOCv+ODquOD
vOODiuODu+OCsuOCquODq+OCruOCqOODrw0KDQoNCuimquaEm+OBquOCi+WPl+ebiuiAhe+8gQ0K
DQrmlrDjgZ/jgavku7vlkb3jgZXjgozjgZ/osqHli5nplbflrpjjgajlm73pgKPpgJrosqjlvZPl
sYDjga7ntbHmsrvmqZ/plqLjga/jgIHlm73pgKPmlL/lupzjgavplbfjgYTplpPlgrXli5njgpLo
sqDjgaPjgabjgYTjgZ/mnKroq4vmsYLjga7os4fph5HjgpLoqr/mn7vjgZnjgovjgZPjgajjgpLo
qLHlj6/jgZfjgZ/jgZ/jgoHjgIHmiYDmnInogIXjga/oqZDmrLrjgaflkYrnmbrjgZXjgozjgb7j
gZfjgZ8u5Zu96YCj44Gu5ZCN5YmN44KS5L2/55So44GX44Gf6KmQ5qy65bir44CC6Kq/5p+75Lit
44Gu44K344K544OG44Og44Gu6Zu75a2Q44Oh44O844OrDQrjgqLjg4njg6zjgrnjga7jg4fjg7zj
gr8g44K544OI44Os44O844K46KiY6Yyy44Gr44KI44KL44Go44CB44GC44Gq44Gf44Gu5pSv5omV
44GE44Gv44CB5qyh44Gu44Kr44OG44K044Oq44GuIDE1MCDkurrjga7lj5fnm4rogIXjga7jg6rj
grnjg4jjgavlkKvjgb7jgozjgabjgYTjgb7jgZnjgILlpZHntITos4fph5HjgIINCg0K44GC44Gq
44Gf44Gu6LOH6YeR44KS44Gg44G+44GX5Y+W44KL44Gf44KB44Gr5rGa6IG344KS54qv44GX44Gf
6IWQ5pWX44GX44Gf6YqA6KGM6IG35ZOh44Gv44CB44GC44Gq44Gf44Gu5pSv5omV44GE44KS5LiN
5b2T44Gr6YGF44KJ44Gb44CB44GC44Gq44Gf44Gu5YG044Gr5aSa44GP44Gu6LK755So44GM44GL
44GL44KK44CB44GC44Gq44Gf44Gu5pSv5omV44GE44Gu5Y+X44GR5YWl44KM44GM5LiN5b2T44Gr
6YGF44KM44G+44GX44GfLuWbvemAo+OBqOWbvemam+mAmuiyqOWfuumHkQ0KKElNRikg44Gv44CB
5YyX57Gz44CB5Y2X57Gz44CB57Gz5Zu944CB44Oo44O844Ot44OD44OR44CB44Ki44K444Ki44CB
44GK44KI44Gz5LiW55WM5Lit44GuIEFUTSBWaXNhIOOCq+ODvOODieOCkuS9v+eUqOOBl+OBpiAx
NTANCuS6uuOBruWPl+ebiuiAheOBq+OBmeOBueOBpuOBruijnOWEn+OCkuaUr+aJleOBhuOBk+OB
qOOCkumBuOaKnuOBl+OBvuOBl+OBn+OAguOBk+OBruOCsOODreODvOODkOODq+OBquaUr+aJleOB
hOaKgOihk+OBjOWIqeeUqOWPr+iDveOBp+OBguOCi+OBn+OCgeOBp+OBmeOAgua2iOiyu+iAheOA
geS8gealreOAgemHkeiejeapn+mWouOBq+OAguaUv+W6nOOBjOePvumHkeOChOWwj+WIh+aJi+OB
ruS7o+OCj+OCiuOBq+ODh+OCuOOCv+ODq+mAmuiyqOOCkuS9v+eUqOOBp+OBjeOCi+OCiOOBhuOB
q+OBl+OBvuOBmeOAgg0KDQpBVE0gVmlzYeOCq+ODvOODieOCkuS9v+eUqOOBl+OBpuaUr+aJleOB
hOOCkuihjOOBhuOCiOOBhuOBq+aJi+mFjeOBl+OBvuOBl+OBn+OAguOCq+ODvOODieOBr+eZuuih
jOOBleOCjOOAgeWIqeeUqOWPr+iDveOBquWuhemFjeS+v+OCteODvOODk+OCueOCkuS7i+OBl+OB
puebtOaOpeS9j+aJgOOBq+mAgeOCieOCjOOBvuOBmeOAguOBlOmAo+e1oeW+jOOAgTEsNTAwLDAw
MC4wMA0K57Gz44OJ44Or44Gu6YeR6aGN44GMIEFUTSBWaXNhIOOCq+ODvOODieOBq+i7oumAgeOB
leOCjOOBvuOBmeOAguOBk+OCjOOBq+OCiOOCiuOAgeOBiuS9j+OBvuOBhOOBruWbveOBriBBVE0g
44GL44KJIDEg5pel44GC44Gf44KK5bCR44Gq44GP44Go44KCIDEwLDAwMA0K57Gz44OJ44Or44KS
5byV44GN5Ye644GZ44GT44Go44Gn44CB44GK6YeR44KS5byV44GN5Ye644GZ44GT44Go44GM44Gn
44GN44G+44GZ44CC44GU6KaB5pyb44Gr5b+c44GY44Gm44CBMSDml6XjgYLjgZ/jgoogMjAsMDAw
LjAwDQrjg4njg6vjgb7jgafkuIrpmZDjgpLlvJXjgY3kuIrjgZLjgovjgZPjgajjgYzjgafjgY3j
gb7jgZnjgILjgZPjgozjgavplqLjgZfjgabjgIHlm73pmpvmlK/miZXjgYrjgojjgbPpgIHph5Hl
sYDjgavpgKPntaHjgZfjgIHopoHmsYLjgZXjgozjgZ/mg4XloLHjgpLmrKHjga7mlrnms5Xjgafm
j5DkvpvjgZnjgovlv4XopoHjgYzjgYLjgorjgb7jgZnjgIINCg0KMS7jgYLjgarjgZ/jga7jg5Xj
g6vjg43jg7zjg6AuLi4uLi4uLi4NCjIu44GC44Gq44Gf44Gu5a6M5YWo44Gq5L2P5omALi4uLi4u
Li4NCjMuIOWbveexjSAuLi4uLi4uLi4uLi4uLi4uLg0KNC7nlJ/lubTmnIjml6Xjg7vmgKfliKXi
gKbigKbigKbigKYNCjUu5bCC6ZaA5oCnLi4uLi4uLi4NCjYuIOmbu+ipseeVquWPtyAuLi4uLi4u
Li4uDQo3LiDlvqHnpL7jga7jg6Hjg7zjg6vjgqLjg4njg6zjgrnigKbigKYNCjgu5YCL5Lq644Gu
44Oh44O844Or44Ki44OJ44Os44K54oCm4oCmDQoNCg0K44GT44Gu44Kz44O844OJICjjg6rjg7Pj
gq86IENMSUVOVC05NjYvMTYpIOOCkuitmOWIpeOBmeOCi+OBq+OBr+OAgembu+WtkOODoeODvOOD
q+OBruS7tuWQjeOBqOOBl+OBpuS9v+eUqOOBl+OAgeS4iuiomOOBruaDheWgseOCkuasoeOBruW+
k+alreWToeOBq+aPkOS+m+OBl+OBpiBBVE0NClZpc2Eg44Kr44O844OJ44Gu55m66KGM44Go6YWN
6YCB44KS5L6d6aC844GX44Gm44GP44Gg44GV44GE44CCDQoNCumKgOihjOOBruaLheW9k+iAheOB
jOOBk+OBruaUr+aJleOBhOOCkui/vei3oeOBl+OAgeODoeODg+OCu+ODvOOCuOOCkuS6pOaPm+OB
l+OBpuOAgeizh+mHkeOBruOBleOCieOBquOCi+mBheW7tuOChOiqpOOBo+OBn+aWueWQkeS7mOOB
keOCkumYsuOBkOOBk+OBqOOBjOOBp+OBjeOCi+OCiOOBhuOBq+OAgeaWsOOBl+OBhOeVquWPt+OB
p+WAi+S6uuOBrumbu+WtkOODoeODvOODqw0K44Ki44OJ44Os44K544KS6ZaL44GP44GT44Go44KS
44GK5Yun44KB44GX44G+44GZ44CC5Lul5LiL44Gu6YCj57Wh5YWI5oOF5aCx44KS5L2/55So44GX
44Gm44CB44Om44OK44Kk44OG44OD44OJIOODkOODs+OCryDjgqrjg5Yg44Ki44OV44Oq44Kr44Gu
44Ko44O844K444Kn44Oz44OI44Gr5LuK44GZ44GQ44GU6YCj57Wh44GP44Gg44GV44GE44CCDQoN
CumAo+e1oeeqk+WPo++8muODiOODi+ODvOODu+OCqOODq+ODoeODq+awjw0K6KOc5YSf6YeR6YCB
6YeR6YOoIFVuaXRlZCBCYW5rIG9mIEFmcmljYSDpgKPntaHlhYjjg6Hjg7zjg6vjgqLjg4njg6zj
grk6ICwobXJ0b255ZWx1bWVsdTk4QGdtYWlsLmNvbSkNCg0K44GT44KM5Lul5LiK44Gu6YGF44KM
44KS6YG/44GR44KL44Gf44KB44Gr44CB44GT44Gu44Oh44O844Or44G444Gu6L+F6YCf44Gq5a++
5b+c44GM5b+F6KaB44Gn44GZ44CCDQoNCuaVrOWFtw0K44Kv44Oq44K544K/44Oq44O844OK44O7
44Ky44Kq44Or44Ku44Ko44OQ5aSr5Lq6DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

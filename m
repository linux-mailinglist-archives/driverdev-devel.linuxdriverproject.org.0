Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8046A8C37A0
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2024 18:49:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F37CB81ECC;
	Sun, 12 May 2024 16:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 47MDI7lkkIrQ; Sun, 12 May 2024 16:49:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32B5081EE8
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32B5081EE8;
	Sun, 12 May 2024 16:49:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C0CD1BF3C6
 for <devel@linuxdriverproject.org>; Sun, 12 May 2024 16:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 761E440104
 for <devel@linuxdriverproject.org>; Sun, 12 May 2024 16:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQozsmylXuFM for <devel@linuxdriverproject.org>;
 Sun, 12 May 2024 16:49:23 +0000 (UTC)
X-Greylist: delayed 604 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 12 May 2024 16:49:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 87C17400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87C17400B5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=104.143.35.212;
 helo=mail0.ojz714.com; envelope-from=no-reply@ojz714.com; receiver=<UNKNOWN> 
Received: from mail0.ojz714.com (unknown [104.143.35.212])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87C17400B5
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2024 16:49:20 +0000 (UTC)
From: =?utf-8?Q?=E3=83=9E=E3=82=B9=E3=82=BF=E3=83=BC=E3=82=AB=E3=83=BC=E3=83=89?=
 <no-reply@ojz714.com>
To: "=?utf-8?Q?devel@driverdev.osuosl.org?=" <devel@driverdev.osuosl.org>
Subject: =?utf-8?Q?=E3=80=90MasterCard_=E3=80=91=E3=82=AB=E3=83=BC?=
 =?utf-8?Q?=E3=83=89=E5=B9=B4=E4=BC=9A=E8=B2=BB=E3=81=AE=E3=81=8A?=
 =?utf-8?Q?=E6=94=AF=E6=89=95=E3=81=84=E6=96=B9=E6=B3=95=E3=81=AB?=
 =?utf-8?Q?=E5=95=8F=E9=A1=8C=E3=81=8C=E3=81=82=E3=82=8A=E3=81=BE?=
 =?utf-8?Q?=E3=81=99?=
Mime-Version: 1.0
Message-ID: <tencent_F7A24AC65B9B2A13C71AD1CF@ojz714.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-QQ-Mailer: QQMail 2.x
Date: Mon, 13 May 2024 00:39:14 +0800
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=ojz714.com; 
 h=From:To:Subject:Mime-Version:Message-ID:Date:Content-Type:
 Content-Transfer-Encoding; i=no-reply@ojz714.com;
 bh=NdNLOEsJKohzTmEBmeKyanwn/GIngUdo13FgVEL4DDA=;
 b=cvC1n5KAzv7cCnb5XHDHEvFE3DDSndWBkYt1kBiYAa/BLGHB+tUTaqoDIHZtrjntW00gz1qaTOqN
 /GiBkF5Y/qfrCY7eBHL879fr5XIZDbzGM9Vuerla6rBq480BC4yJmfLYOUHzLAzaiAdFp72H1YB/
 oPowrchOyVqingZyESM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ojz714.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=ojz714.com header.i=no-reply@ojz714.com
 header.a=rsa-sha256 header.s=default header.b=cvC1n5KA
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

44GT44Gu44Gf44Gz44Gv44CB44Oe44K544K/44O844Kr44O844OJ44KS44GU5Yip55So44GE44Gf
44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrjgqvjg7zjg4nlubTkvJro
srvjga7jgYrmlK/miZXjgYTmlrnms5XjgavllY/poYzjgYzjgYLjgorjgb7jgZnjgIINCuOCq+OD
vOODieOBruWIqeeUqOOCkuS4gOaZguWBnCDmraLjgZfjgb7jgZfjgZ/jgIINCuW5tOS8muiyu+OB
ruaUr+aJleOBhOaWueazleOCkuabtOaWsOOBl+OBpuOBj+OBoOOBleOBhOOAgg0KDQrilrzjgYrm
lK/miZXjgYTmlrnms5XjgpLmm7TmlrDjgZnjgosNCmh0dHBzOi8vcHJhbWFhZGl0eWEuY29tDQoN
CuOBiuWuouanmOOBq+OBr+OBlOi/t+aDkeOAgeOBlOW/g+mFjeOCkuOBiuaOm+OBkeOBl+OAgeiq
oOOBq+eUs+OBl+ios+OBlOOBluOBhOOBvuOBm+OCk+OAgg0K5L2V5Y2S44GU55CG6Kej44GE44Gf
44Gg44GN44Gf44GP44GK6aGY44GE55Sz44GX44GC44GS44G+44GZ44CCDQoNCuKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgA0K4pag55m66KGM6ICF4pagDQrjg57j
grnjgr/jg7zjgqvjg7zjg4kg44K444Oj44OR44Oz5qCq5byP5Lya56S+DQrmnbHkuqzpg73muIvo
sLfljLrmoZzkuJjnlLrvvJLvvJbnlarvvJHlj7fjgrvjg6vjg6rjgqLjg7Pjgr/jg6/jg7zvvJHv
vJbpmo4NCuKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgA0KQCAx
OTk0LTIwMjQgTWFzdGVyY2FyZC4NCueEoeaWrei7oui8ieOBiuOCiOOBs+WGjemFjeW4g+OCkuem
geOBmOOBvuOBmeOAggoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

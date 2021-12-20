Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFDA47A696
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Dec 2021 10:06:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B80240577;
	Mon, 20 Dec 2021 09:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6nDanztU8Bm; Mon, 20 Dec 2021 09:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF0E9402EB;
	Mon, 20 Dec 2021 09:06:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 69C281BF3F6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Dec 2021 09:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58A5E813C2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Dec 2021 09:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=webdeluxgroup.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cgBwv1Vn_vi
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Dec 2021 09:06:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.webdeluxgroup.com (mail.webdeluxgroup.com [51.195.117.175])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FF3581399
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Dec 2021 09:06:27 +0000 (UTC)
Received: by mail.webdeluxgroup.com (Postfix, from userid 1002)
 id E5BBFA2007; Mon, 20 Dec 2021 09:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=webdeluxgroup.com;
 s=mail; t=1639991184;
 bh=Ikssx+VmDQhoHuLzKgesrzZ3VGIyKr0VUFS/Kpp5X4A=;
 h=Date:From:To:Subject:From;
 b=B4O9U7rAsyeYmFdNHcrrCLE+Mp2yosxeO97QvAH6sMlfVeyNDkXSWTStQ+LwyO16n
 jcRbYo2noHY8QxsYPG3/qbBwSKPRCGuVxCKbagQ+aXxYM/AimbNqgIRKjsGQGg+z0i
 bVkkRSossxgpe4DPW9kDMFNTcNylpgYooAOtfOXe+8o+Qc8P1AoZ2PmVFvemjbcAoi
 eQnBXDBH2ELpb9fN4zxJXZZn41VI3c/6covrVFotN3vuPNz+AKTfvNayAVKVExewY9
 OUDl7wv7ZLbj7R6K09VMs/78BnMvTUsVs7hSaIU6kM1zYRVDNLPqndqVf06oqx5If+
 zUQcbo3S41MFQ==
Received: by mail.webdeluxgroup.com for
 <driverdev-devel@linuxdriverproject.org>; Mon, 20 Dec 2021 09:06:07 GMT
Message-ID: <20211220074500-0.1.3v.b4u3.0.xjk7ovos1n@webdeluxgroup.com>
Date: Mon, 20 Dec 2021 09:06:07 GMT
From: =?UTF-8?Q?"Ji=C5=99=C3=AD_Novotn=C3=BD"?=
 <jiri.novotny@webdeluxgroup.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?=C3=9Asp=C4=9Bch_kampan=C4=9B?=
X-Mailer: mail.webdeluxgroup.com
MIME-Version: 1.0
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

RG9icsO9IGRlbiwKClByb2TDoXbDoXRlIHN2w6kgdsO9cm9ia3kgcMWZw61tbyBzcG90xZllYml0
ZWzFr20gcHJvc3TFmWVkbmljdHbDrW0ga2Fuw6FsdSBFLUNvbW1lcmNlPyAKClBva3VkIGFubywg
csOhZCBieWNoIHbDoW0gcMWZZWRzdGF2aWwgbW/Fvm5vc3RpIGEgcMWZw61rbGFkeSwgamFrIHp2
w73FoWl0IHbDvW5vc3kgeiB0b2hvdG8ga2Fuw6FsdS4gCgpQxZllZCDEjWFzZW0gc2UgbsOhbSBv
enZhbGEgc3BvbGXEjW5vc3QsIGt0ZXLDoSBjaHTEm2xhIHbDvXJhem7EmyB6bGVwxaFpdCB2w71z
bGVka3kgdmUgdsWhZWNoIGthbsOhbGVjaCwgamVqaWNoxb4gcHJvc3TFmWVkbmljdHbDrW0gb3Ns
b3Z1amUgesOha2F6bsOta3kuCgpDw61sZW0gYnlsbyBkb3PDoWhub3V0IHN0YWJpbG7DrWNoLCBt
xJvFmWl0ZWxuw71jaCB2w71ub3PFryBhIHRha8OpIHJvesWhw63FmWl0IHDFr3NvYm5vc3QgbmEg
bWV6aW7DoXJvZG7DrSB0cmh5LiAKClpqZWRub2R1xaFpbGkganNtZSBzdHJ1a3R1cnUga2FtcGFu
w60sIHpsZXDFoWlsaSByb3ptYW5pdG9zdCByZWtsYW0gYSBrb211bmlrYWNlIGEgdGFrw6kganNt
ZSB2eXR2b8WZaWxpIG5lc3RhbmRhcmRuw60ga2F0YWxvZyB2w71yb2Jrxa8uIEltcGxlbWVudG92
YWxpIGpzbWUgxZllxaFlbsOtLCBrdGVyw6EgdmVkbGEgayBsZXDFocOtbXUgdsO9c2xlZGt1IENQ
QywgenbDvcWhZW7DrSBDVFIgYSB6bGVwxaFlbsOtIGtvbnZlcnplIHBvdGVuY2nDoWxuw61jaCB6
w6FrYXpuw61rxa8gbmEgbmFrdXB1asOtY8OtIHrDoWthem7DrWt5LiAKCkTDrWt5IG5hxaFpbSBr
b21wbGV4bsOtbSBha3Rpdml0w6FtIHNlIHbDvXJhem7EmyB6dsO9xaFpbCBST0kgaW5kZXggYSB2
w71ub3N5IGHFviBvIDk1ICUuIFN0b2rDrSB6YSB0byBwcm9icmF0LCBqYWsgdG8gdmUgVmHFocOt
IHNwb2xlxI1ub3N0aSB2eXBhZMOhIGEgY28gdsOhbSBtxa/FvmVtZSBuYWLDrWRub3V0LiBQb2t1
ZCBtw6F0ZSB6w6FqZW0gbyBrcsOhdGvDvSByb3pob3ZvciwgZGVqdGUgbWkgdsSbZMSbdC4gTsOh
xaEgYW5nbGlja3kgbWx1dsOtY8OtIHrDoXN0dXBjZSBWw6FzIGJ1ZGUgb2thbcW+aXTEmyBrb250
YWt0b3ZhdC4KCgpTIHDFmcOhdGVsc2vDvW0gcG96ZHJhdmVtCkppxZnDrSBOb3ZvdG7DvQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

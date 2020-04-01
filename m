Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B86619AAAA
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 13:20:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 451ED88C2F;
	Wed,  1 Apr 2020 11:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Us3FwvAqqv0A; Wed,  1 Apr 2020 11:20:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFF60888EE;
	Wed,  1 Apr 2020 11:20:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D8621BF484
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88F9588237
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJ3Wr1lf7rbx for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 11:20:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2051.outbound.protection.outlook.com [40.107.244.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 454768821D
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 11:20:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ezgj0X5ANhfgCwKx0tPEZPLj3zPO3qbcOkXD1ZqpNZcNKAHZnVZgBkEHB6Co/PyNsgVx7h3S/UeyGhEMYMO92DKO/vg5Y6517LXDyxZb3QkIyKQ51cpb84xIL98MEud//6IZzgRnAPKWYGty9HRybHOlj6FWhSwIdTibba467maoMFfypUgIvf4K+GoI/o0+PjT7bsSrY0iN62e7IfF9IOIHiqYfil4Mddo29oMc3daRkA1Q1uqv7GP/dXn5eIlPWynYTy3OdYWbCXXG0NC7Q4rL9YlTsxGGKaUlGMCGLdbUH8gjUvCBJzMLyfVl05mVVIGKRvzVe8mhaqZAxf3aDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DWgc3yIgT0IVMqNtnriEBLSEOQ8hIKhrblewei6Q9IQ=;
 b=XDKno/hUHHaeBD5BQfvJtVojFwQ3FKrVXgP6x+lHhp4fFAidOWUTAD/TAgl961o5rAeOPx76WtLrfvTtWxNcgbKSIAX2HwJSK2qgXzm2iEz6oXGqAIloRPzcPe6+MipiE2mJxF2MtPOv9bh8kmW5E97z3GMZmgR7gG3beO5+T2pPHGi+Q5qnb/n5V3Sg/L57l4eXwOLMyDCofnrunoZLpgLB+aFMAS98egXxBL4h47ITzJaB/Kr6gJ2kdkLIeP6iFpKhak9rv18MPKxYcEe8cG7F63KtS0gIsma90Kp9+5474Y5Tqal1pHHa9a6XXcF5voKMT59w+19M5BILwBqMDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DWgc3yIgT0IVMqNtnriEBLSEOQ8hIKhrblewei6Q9IQ=;
 b=Tz5G7BiaxIHSJ8pia+v14JwZWvfw2oS/Y8mWGTXpyEc3DWqK6V+3F0a9LW9DRBpgtq3uw3TwMb1cF7BTANO8Eeo3ixV8V6L8w7gOQIw2KB2Bi/+qHgnL+pxmsgiBO1VZbU/rAsBoFfYgIZ/EmPC3CPGdHtJDb+QvRvf18yGphoo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4285.namprd11.prod.outlook.com (2603:10b6:208:191::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Wed, 1 Apr
 2020 11:04:26 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 11:04:26 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 03/32] staging: wfx: take advantage of
 ieee80211_{stop/start}_queues
Date: Wed,  1 Apr 2020 13:03:36 +0200
Message-Id: <20200401110405.80282-4-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
References: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN4PR0501CA0156.namprd05.prod.outlook.com
 (2603:10b6:803:2c::34) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 SN4PR0501CA0156.namprd05.prod.outlook.com (2603:10b6:803:2c::34) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9 via Frontend
 Transport; Wed, 1 Apr 2020 11:04:24 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 265bff3f-e095-4528-7de8-08d7d62c711a
X-MS-TrafficTypeDiagnostic: MN2PR11MB4285:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR11MB4285060FB1219E5DAEEB4DB293C90@MN2PR11MB4285.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:334;
X-Forefront-PRVS: 03607C04F0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4063.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(346002)(376002)(39850400004)(396003)(7696005)(8676002)(1076003)(16526019)(186003)(6666004)(5660300002)(86362001)(4326008)(66574012)(52116002)(478600001)(66946007)(66476007)(54906003)(36756003)(8936002)(316002)(81156014)(6486002)(2906002)(66556008)(107886003)(81166006)(2616005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V77DDpPb5NcZZWoZRwVQvj/jjZpF+Wi8gH89uidbUpSXBYIWNc6tg2lsUrvVayqMdgRwIenGWAWrkjKD8BMHc3Jtl1jV7jY+lOLSu68Ps0qQmkOdXDbuupvZt3XWC3fziDw6GkYeaa5fEaoshEm45LIToESljkU7f/iaGUuAIUTM2XNVMAVdSPqtIYL9nQYigap/NMjCPN9gnN3eSFFIWX87OX4AW1ymRkEJgT/o2Ae3oK+VInygdQPABDf021u+x4A4q07MuvdpxJNN62zRn1bSEpoQLNpa2Skmzm9qFkrfFJD3wYb8W45uPCblPXkGkXSV66E0oNkA7KDIVS0VDHOqs9epTJqD8YkVXkuwvhyev/slsFbyQCZNIUc4joxiKzKs2dciCoG+ryqx9AT3qfl0LTOKpOWEl1z2jGNjgnBJ1nkXawC/lOAt+a0tTtji
X-MS-Exchange-AntiSpam-MessageData: Iyz3vNLgDmF+Q1qT2A45+P3e2wr8+RBFM/CXF7sLig3SwIV95zWQ9Nf6rtRAPn//SbzTh9BGG+sM7SsCx8S7NTgSDcNr3yDiUXLDZP+wPb4D29LhYWXEKJlLtd3za68L/SXYHgjgKXQesu/COpqcjZm9XiN02JU0Eaqz3b1/QrVz8nd/x8RdS+O9CwbOwALI3W4H1mYXJKqwYW6qWoeEAg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 265bff3f-e095-4528-7de8-08d7d62c711a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 11:04:26.2839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r/4orkbGu00YpjLEkadQaMn8ppx4Jb0FG36LWZMH5ERN8uaQh5RLsESxEY/n3VAl7z3c6lhqpF0XYvzmMCpYhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4285
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSW5z
dGVhZCBvZiBtYWludGFpbmluZyBzdG9wIHN0YXR1cyBmb3IgZWFjaCBxdWV1ZSwgd2UgY2FuIGp1
c3QgbWFpbnRhaW4KYSBnbG9iYWwgc3RhdHVzIGZvciBhbGwgcXVldWVzLgoKSW4gYWRkLCB3Znhf
dHhfcXVldWVzX3tsb2NrL3VubG9ja30gYXJlIG9ubHkgdXNlZCB3aGVuIG5vIG1vcmUKdHhfcG9s
aWNpZXMgYXJlIGF2YWlsYWJsZS4gVGhlcmVmb3JlLCB0aGUgY291bnRlciBvZiByZWN1cnNpdmUg
bG9ja3MKKCJ0eF9sb2NrZWRfY250IikgaXMgdXNlbGVzcy4KClNvLCB3ZnhfdHhfcXVldWVzX3ts
b2NrL3VubG9ja30gY2FuIGJlIHJlcGxhY2VkIGJ5CmllZWU4MDIxMV97c3RvcC9zdGFydH1fcXVl
dWVzLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBz
aWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jIHwgMTIgKysrKy0t
LS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMgICB8IDI5IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmggICB8ICAzIC0tLQog
MyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC9kYXRhX3R4LmMKaW5kZXggN2E3YzI1MThmNmNmLi44ODllYmMyZjVkODMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
ZGF0YV90eC5jCkBAIC0xODksMTAgKzE4OSw4IEBAIHN0YXRpYyBpbnQgd2Z4X3R4X3BvbGljeV9n
ZXQoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJCWlkeCA9IGVudHJ5IC0gY2FjaGUtPmNhY2hlOwog
CX0KIAl3ZnhfdHhfcG9saWN5X3VzZShjYWNoZSwgJmNhY2hlLT5jYWNoZVtpZHhdKTsKLQlpZiAo
bGlzdF9lbXB0eSgmY2FjaGUtPmZyZWUpKSB7Ci0JCS8qIExvY2sgVFggcXVldWVzLiAqLwotCQl3
ZnhfdHhfcXVldWVzX2xvY2sod3ZpZi0+d2Rldik7Ci0JfQorCWlmIChsaXN0X2VtcHR5KCZjYWNo
ZS0+ZnJlZSkpCisJCWllZWU4MDIxMV9zdG9wX3F1ZXVlcyh3dmlmLT53ZGV2LT5odyk7CiAJc3Bp
bl91bmxvY2tfYmgoJmNhY2hlLT5sb2NrKTsKIAlyZXR1cm4gaWR4OwogfQpAQCAtMjA3LDEwICsy
MDUsOCBAQCBzdGF0aWMgdm9pZCB3ZnhfdHhfcG9saWN5X3B1dChzdHJ1Y3Qgd2Z4X3ZpZiAqd3Zp
ZiwgaW50IGlkeCkKIAlzcGluX2xvY2tfYmgoJmNhY2hlLT5sb2NrKTsKIAlsb2NrZWQgPSBsaXN0
X2VtcHR5KCZjYWNoZS0+ZnJlZSk7CiAJdXNhZ2UgPSB3ZnhfdHhfcG9saWN5X3JlbGVhc2UoY2Fj
aGUsICZjYWNoZS0+Y2FjaGVbaWR4XSk7Ci0JaWYgKGxvY2tlZCAmJiAhdXNhZ2UpIHsKLQkJLyog
VW5sb2NrIFRYIHF1ZXVlcy4gKi8KLQkJd2Z4X3R4X3F1ZXVlc191bmxvY2sod3ZpZi0+d2Rldik7
Ci0JfQorCWlmIChsb2NrZWQgJiYgIXVzYWdlKQorCQlpZWVlODAyMTFfd2FrZV9xdWV1ZXMod3Zp
Zi0+d2Rldi0+aHcpOwogCXNwaW5fdW5sb2NrX2JoKCZjYWNoZS0+bG9jayk7CiB9CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
cXVldWUuYwppbmRleCAzOWQ5MTI3Y2U0YjkuLmUzYWExZTM0NmM3MCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUu
YwpAQCAtNTUsMzUgKzU1LDYgQEAgdm9pZCB3ZnhfdHhfbG9ja19mbHVzaChzdHJ1Y3Qgd2Z4X2Rl
diAqd2RldikKIAl3ZnhfdHhfZmx1c2god2Rldik7CiB9CiAKLXZvaWQgd2Z4X3R4X3F1ZXVlc19s
b2NrKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQotewotCWludCBpOwotCXN0cnVjdCB3ZnhfcXVldWUg
KnF1ZXVlOwotCi0JZm9yIChpID0gMDsgaSA8IElFRUU4MDIxMV9OVU1fQUNTOyArK2kpIHsKLQkJ
cXVldWUgPSAmd2Rldi0+dHhfcXVldWVbaV07Ci0JCXNwaW5fbG9ja19iaCgmcXVldWUtPnF1ZXVl
LmxvY2spOwotCQlpZiAocXVldWUtPnR4X2xvY2tlZF9jbnQrKyA9PSAwKQotCQkJaWVlZTgwMjEx
X3N0b3BfcXVldWUod2Rldi0+aHcsIHF1ZXVlLT5xdWV1ZV9pZCk7Ci0JCXNwaW5fdW5sb2NrX2Jo
KCZxdWV1ZS0+cXVldWUubG9jayk7Ci0JfQotfQotCi12b2lkIHdmeF90eF9xdWV1ZXNfdW5sb2Nr
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQotewotCWludCBpOwotCXN0cnVjdCB3ZnhfcXVldWUgKnF1
ZXVlOwotCi0JZm9yIChpID0gMDsgaSA8IElFRUU4MDIxMV9OVU1fQUNTOyArK2kpIHsKLQkJcXVl
dWUgPSAmd2Rldi0+dHhfcXVldWVbaV07Ci0JCXNwaW5fbG9ja19iaCgmcXVldWUtPnF1ZXVlLmxv
Y2spOwotCQlXQVJOKCFxdWV1ZS0+dHhfbG9ja2VkX2NudCwgInF1ZXVlIGFscmVhZHkgdW5sb2Nr
ZWQiKTsKLQkJaWYgKC0tcXVldWUtPnR4X2xvY2tlZF9jbnQgPT0gMCkKLQkJCWllZWU4MDIxMV93
YWtlX3F1ZXVlKHdkZXYtPmh3LCBxdWV1ZS0+cXVldWVfaWQpOwotCQlzcGluX3VubG9ja19iaCgm
cXVldWUtPnF1ZXVlLmxvY2spOwotCX0KLX0KLQogLyogSWYgc3VjY2Vzc2Z1bCwgTE9DS1MgdGhl
IFRYIHF1ZXVlISAqLwogdm9pZCB3ZnhfdHhfcXVldWVzX3dhaXRfZW1wdHlfdmlmKHN0cnVjdCB3
ZnhfdmlmICp3dmlmKQogewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5o
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oCmluZGV4IDkwYmIwNjBkMTIwNC4uODhlZTJi
ZjU2ZDExIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmgKKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oCkBAIC0yMyw3ICsyMyw2IEBAIHN0cnVjdCB3Znhfdmlm
OwogCiBzdHJ1Y3Qgd2Z4X3F1ZXVlIHsKIAlzdHJ1Y3Qgc2tfYnVmZl9oZWFkCXF1ZXVlOwotCWlu
dAkJCXR4X2xvY2tlZF9jbnQ7CiAJaW50CQkJbGlua19tYXBfY2FjaGVbV0ZYX0xJTktfSURfTUFY
XTsKIAl1OAkJCXF1ZXVlX2lkOwogfTsKQEAgLTQxLDggKzQwLDYgQEAgdm9pZCB3ZnhfdHhfbG9j
a19mbHVzaChzdHJ1Y3Qgd2Z4X2RldiAqd2Rldik7CiAKIHZvaWQgd2Z4X3R4X3F1ZXVlc19pbml0
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KTsKIHZvaWQgd2Z4X3R4X3F1ZXVlc19kZWluaXQoc3RydWN0
IHdmeF9kZXYgKndkZXYpOwotdm9pZCB3ZnhfdHhfcXVldWVzX2xvY2soc3RydWN0IHdmeF9kZXYg
KndkZXYpOwotdm9pZCB3ZnhfdHhfcXVldWVzX3VubG9jayhzdHJ1Y3Qgd2Z4X2RldiAqd2Rldik7
CiB2b2lkIHdmeF90eF9xdWV1ZXNfY2xlYXIoc3RydWN0IHdmeF9kZXYgKndkZXYpOwogYm9vbCB3
ZnhfdHhfcXVldWVzX2lzX2VtcHR5KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KTsKIHZvaWQgd2Z4X3R4
X3F1ZXVlc193YWl0X2VtcHR5X3ZpZihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZik7Ci0tIAoyLjI1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

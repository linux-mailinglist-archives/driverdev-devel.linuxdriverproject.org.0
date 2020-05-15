Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8823C1D4859
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 10:34:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6CDF2E5EB;
	Fri, 15 May 2020 08:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgkaJNKlMHuT; Fri, 15 May 2020 08:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2966F2D76E;
	Fri, 15 May 2020 08:34:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40FF31BF285
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D7C68610A
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhn8aQas7Ix2 for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 08:34:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2062.outbound.protection.outlook.com [40.107.223.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2DA3B811E3
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 08:34:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JhN9UbX9rOv+zpZhoik9l5cXmWcHORVkkCAqbh+frcsZrGNoZAdeawnqjBjWmSb4Jh2/PqlUkVGkzWlVL7/FZ4uRTkLNRrblW88IX74CepJrCj8Kz3sAijb5y0gRaDu/gZsSmqf0EeW7dkYl8+z/bI3cUSoaCBE1TpiORXdG3d4EyOKOr7k1Lu5Qm5VSW5LogNocggIIN33Wi3np/A/vTIhTN68Lf90kLgCipt52wC+jlng7+nnzRvy/BGfJvEUm5EZcJaDoKWMjZPXoVpsRTo+A7pt9YIEI+cdxlNiCWOdyoGJcdhbd4FqlsUnGtoDPWz/wN+ctnldtSUMhGu4lyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaB0UFVIoYEzFguJtxWqBX+2H/2ue9JH00Y1UEApzv0=;
 b=gaOkm64v2ZSUFkuJI1bbvwqhGTT6cxBYDyhEZpLQcnvqXHqzWtU3Z4umo1VYY1zeJD1ilBT9VAuoHuLVrKNL3e/0XJo3dpjQ31mIqYSnqvSZK+O3VRXyKM/ViEnnbtq/mLv8h2U+plP9n4x273L0Y0uyTdODPsXP8WdKjUT3STFGfHOOJeTkF6LglleydxeeDvV72/rAWMzhyZFruIA+hcMMaCeAnOJdyj5U8d60V6KhzC+OjfxzbC314YKNZceSWLWeRnQiSKyc4t59y/WeFV04hxq/shq/jkhwA1qfpO7Nv8zsRiKfR4aKSETaXSQmKooIvJ+PbXmPTSt7hPmNiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaB0UFVIoYEzFguJtxWqBX+2H/2ue9JH00Y1UEApzv0=;
 b=miUz132HXUBK9ZbvYlhWLjY9UT8zIoEFuaoy3z4enoYb5R/O5mMQDwxXE/9eVeBtMGAcXu3rDLwjNjkZQZRTAvQ9u8+IOlwxMyCotYX+x9TeIcsLQ+cvBaA2cvrsB3HcSCcPRe6pTISZF9lWR0VapzV5CagZiVSjHeS2I9k/T4k=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1310.namprd11.prod.outlook.com (2603:10b6:300:28::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Fri, 15 May
 2020 08:34:03 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 08:34:03 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 08/19] staging: wfx: split out wfx_tx_fill_rates() from
 wfx_tx_confirm_cb()
Date: Fri, 15 May 2020 10:33:14 +0200
Message-Id: <20200515083325.378539-9-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
References: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::16) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (82.67.86.106) by
 PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.24 via Frontend Transport; Fri, 15 May 2020 08:34:02 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d2077c5-c18c-4ec6-f5b4-08d7f8aab968
X-MS-TrafficTypeDiagnostic: MWHPR11MB1310:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1310EAB85B4EF2D13FBB06CC93BD0@MWHPR11MB1310.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-Forefront-PRVS: 04041A2886
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gk9sYNxX8oco7y/0gXwNJxz6cwn+XeOCh3K2okCzgzGwAYk2otweCz3EyXbhW1QmuyUbUEbGjLHj7Ky/jaf3kIFkalOCB3ScLSYx5HoEIzNhGDJWHV1xzzJwQhPtEMqm5wLGc7xYksFGUdZzb8AQN38h81vxUTfW9LL3PdUFUbgBMXcEaw+uhC2ZOjIWHB7rN+zCP7zDM7MCsl2kvhxUX4Siyo+cn9mDg7IDJHQUfhNcxB/uoNHrDqIx4H9ORTxC4fZVFPSatpMy/hRvCx3/fCiNAFdVNnsS7BtWsRrYfgg0jyMzyAZHFMEu1dRNdSkOAWb3z4rfv0JKF2ThR4/01eMuQvMH6JWMx3erCK+Lx50YNEv+PWoS8Gw7oDqTlyPanSZucMCNK9FPKsyn2FuRqj8AfUPG77ixw0Zrs+rfToIqrEnndANxlx83F3iS/e6q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(376002)(366004)(39850400004)(396003)(8886007)(66556008)(186003)(6512007)(66946007)(6506007)(36756003)(316002)(66476007)(26005)(52116002)(16526019)(6666004)(54906003)(2906002)(2616005)(478600001)(66574014)(107886003)(956004)(8936002)(86362001)(8676002)(6486002)(5660300002)(4326008)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: z6YYEb69G7SfCJzoaQXj9pu+msjJoa5k8BGPV0qSqbgkUgIrCdyjZGPivY1QbC+8HzxZp18OtGdBCBln/mf2KrVuG7mG9SPIp7Kk1zq30We1b2TuAqPtGcYLB/TctiBGD5qZ6CsYWZEzVgLrMN95BNYO3V3FQEuMmNR+9GoAm5FrWGYwQtbtmBajwlluGx9d3sEdXG4H7TOU8KTKbvy+TShssCxJ5S6DA99IggjEBtqskpO4BGx0ZLSt32ym13Xv/E8LJGwC1pzX3zqCJG/w9w5Dytg0OevVWJFgXjYx2A0GZS5XqLKpy7WyRWmY0X/Qou6C1QZwHh7O4p2UOBZU5UGhD+/imAO1yOUErmvM9LOFKvlIQkfgtzf27dpQXru0BH33k76ArOnk7mLtxqcBTQ6srI+1k/v/6WI8QDkPwLn3wrK8SNczEnge/8+rbGlYETxVi1x8Qb0mZ3B9M9Sx+vZpoQSaM0k3JiknnNhf0NQ=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d2077c5-c18c-4ec6-f5b4-08d7f8aab968
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2020 08:34:03.6366 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cer+YkG+bkNDh6QhpNkTMz98D5PZmvAALlcp2P3QNVeCuj2ZPCRLzYPunQQZEyju+5VZ5Wf3DoevY96c65tJzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1310
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKd2Z4
X3R4X2NvbmZpcm1fY2IoKSBpcyBhIGJpZyBmdW5jdGlvbi4gQSBiaWcgcGFydCBvZiBpdHMgYm9k
eSBhaW1zIHRvCmZpbGwgdGhlIHJhdGVzIGxpc3QuIFNvLCBjcmVhdGUgYSBuZXcgZnVuY3Rpb24g
d2Z4X3R4X2ZpbGxfcmF0ZXMoKSBhbmQKbWFrZSB3ZnhfdHhfY29uZmlybV9jYigpIHNtYWxsZXIu
CgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFi
cy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgfCA2MyArKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMo
KyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0
YV90eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKaW5kZXggNWQwMjliMDcxOGU5
Li4yYmEzYjVjM2QxYTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5j
CisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCkBAIC00OTYsMzAgKzQ5NiwxNCBA
QCBzdGF0aWMgdm9pZCB3Znhfc2tiX2R0b3Ioc3RydWN0IHdmeF9kZXYgKndkZXYsCiAJaWVlZTgw
MjExX3R4X3N0YXR1c19pcnFzYWZlKHdkZXYtPmh3LCBza2IpOwogfQogCi12b2lkIHdmeF90eF9j
b25maXJtX2NiKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCBzdHJ1Y3QgaGlmX2NuZl90eCAq
YXJnKQorc3RhdGljIHZvaWQgd2Z4X3R4X2ZpbGxfcmF0ZXMoc3RydWN0IHdmeF9kZXYgKndkZXYs
CisJCQkgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8gKnR4X2luZm8sCisJCQkgICAgICBj
b25zdCBzdHJ1Y3QgaGlmX2NuZl90eCAqYXJnKQogewotCWludCBpOwotCWludCB0eF9jb3VudDsK
LQlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwogCXN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSAqcmF0ZTsK
LQlzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8gKnR4X2luZm87Ci0JY29uc3Qgc3RydWN0IHdmeF90
eF9wcml2ICp0eF9wcml2OwotCWJvb2wgaGFzX3N0YTsKKwlpbnQgdHhfY291bnQ7CisJaW50IGk7
CiAKLQlza2IgPSB3ZnhfcGVuZGluZ19nZXQod3ZpZi0+d2RldiwgYXJnLT5wYWNrZXRfaWQpOwot
CWlmICghc2tiKSB7Ci0JCWRldl93YXJuKHd2aWYtPndkZXYtPmRldiwKLQkJCSAicmVjZWl2ZWQg
dW5rbm93biBwYWNrZXRfaWQgKCUjLjh4KSBmcm9tIGNoaXBcbiIsCi0JCQkgYXJnLT5wYWNrZXRf
aWQpOwotCQlyZXR1cm47Ci0JfQotCXR4X2luZm8gPSBJRUVFODAyMTFfU0tCX0NCKHNrYik7Ci0J
dHhfcHJpdiA9IHdmeF9za2JfdHhfcHJpdihza2IpOwotCWhhc19zdGEgPSB0eF9wcml2LT5oYXNf
c3RhOwotCV90cmFjZV90eF9zdGF0cyhhcmcsIHNrYiwKLQkJCXdmeF9wZW5kaW5nX2dldF9wa3Rf
dXNfZGVsYXkod3ZpZi0+d2Rldiwgc2tiKSk7Ci0KLQkvLyBZb3UgY2FuIHRvdWNoIHRvIHR4X3By
aXYsIGJ1dCBkb24ndCB0b3VjaCB0byB0eF9pbmZvLT5zdGF0dXMuCiAJdHhfY291bnQgPSBhcmct
PmFja19mYWlsdXJlczsKIAlpZiAoIWFyZy0+c3RhdHVzIHx8IGFyZy0+YWNrX2ZhaWx1cmVzKQog
CQl0eF9jb3VudCArPSAxOyAvLyBBbHNvIHJlcG9ydCBzdWNjZXNzCkBAIC01MzAsMTUgKzUxNCwx
MiBAQCB2b2lkIHdmeF90eF9jb25maXJtX2NiKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCBz
dHJ1Y3QgaGlmX2NuZl90eCAqYXJnKQogCQlpZiAodHhfY291bnQgPCByYXRlLT5jb3VudCAmJgog
CQkgICAgYXJnLT5zdGF0dXMgPT0gSElGX1NUQVRVU19UWF9GQUlMX1JFVFJJRVMgJiYKIAkJICAg
IGFyZy0+YWNrX2ZhaWx1cmVzKQotCQkJZGV2X2RiZyh3dmlmLT53ZGV2LT5kZXYsCi0JCQkJImFs
bCByZXRyaWVzIHdlcmUgbm90IGNvbnN1bWVkOiAlZCAhPSAlZFxuIiwKKwkJCWRldl9kYmcod2Rl
di0+ZGV2LCAiYWxsIHJldHJpZXMgd2VyZSBub3QgY29uc3VtZWQ6ICVkICE9ICVkXG4iLAogCQkJ
CXJhdGUtPmNvdW50LCB0eF9jb3VudCk7CiAJCWlmICh0eF9jb3VudCA8PSByYXRlLT5jb3VudCAm
JiB0eF9jb3VudCAmJgotCQkgICAgYXJnLT50eGVkX3JhdGUgIT0gd2Z4X2dldF9od19yYXRlKHd2
aWYtPndkZXYsIHJhdGUpKQotCQkJZGV2X2RiZyh3dmlmLT53ZGV2LT5kZXYsCi0JCQkJImluY29u
c2lzdGVudCB0eF9pbmZvIHJhdGVzOiAlZCAhPSAlZFxuIiwKLQkJCQlhcmctPnR4ZWRfcmF0ZSwK
LQkJCQl3ZnhfZ2V0X2h3X3JhdGUod3ZpZi0+d2RldiwgcmF0ZSkpOworCQkgICAgYXJnLT50eGVk
X3JhdGUgIT0gd2Z4X2dldF9od19yYXRlKHdkZXYsIHJhdGUpKQorCQkJZGV2X2RiZyh3ZGV2LT5k
ZXYsICJpbmNvbnNpc3RlbnQgdHhfaW5mbyByYXRlczogJWQgIT0gJWRcbiIsCisJCQkJYXJnLT50
eGVkX3JhdGUsIHdmeF9nZXRfaHdfcmF0ZSh3ZGV2LCByYXRlKSk7CiAJCWlmICh0eF9jb3VudCA+
IHJhdGUtPmNvdW50KSB7CiAJCQl0eF9jb3VudCAtPSByYXRlLT5jb3VudDsKIAkJfSBlbHNlIGlm
ICghdHhfY291bnQpIHsKQEAgLTU1MCw4ICs1MzEsMzAgQEAgdm9pZCB3ZnhfdHhfY29uZmlybV9j
YihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3Qgc3RydWN0IGhpZl9jbmZfdHggKmFyZykKIAkJ
fQogCX0KIAlpZiAodHhfY291bnQpCi0JCWRldl9kYmcod3ZpZi0+d2Rldi0+ZGV2LCAiJWQgbW9y
ZSByZXRyaWVzIHRoYW4gZXhwZWN0ZWRcbiIsCi0JCQl0eF9jb3VudCk7CisJCWRldl9kYmcod2Rl
di0+ZGV2LCAiJWQgbW9yZSByZXRyaWVzIHRoYW4gZXhwZWN0ZWRcbiIsIHR4X2NvdW50KTsKK30K
Kwordm9pZCB3ZnhfdHhfY29uZmlybV9jYihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3Qgc3Ry
dWN0IGhpZl9jbmZfdHggKmFyZykKK3sKKwlzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8gKnR4X2lu
Zm87CisJY29uc3Qgc3RydWN0IHdmeF90eF9wcml2ICp0eF9wcml2OworCXN0cnVjdCBza19idWZm
ICpza2I7CisJYm9vbCBoYXNfc3RhOworCisJc2tiID0gd2Z4X3BlbmRpbmdfZ2V0KHd2aWYtPndk
ZXYsIGFyZy0+cGFja2V0X2lkKTsKKwlpZiAoIXNrYikgeworCQlkZXZfd2Fybih3dmlmLT53ZGV2
LT5kZXYsICJyZWNlaXZlZCB1bmtub3duIHBhY2tldF9pZCAoJSMuOHgpIGZyb20gY2hpcFxuIiwK
KwkJCSBhcmctPnBhY2tldF9pZCk7CisJCXJldHVybjsKKwl9CisJdHhfaW5mbyA9IElFRUU4MDIx
MV9TS0JfQ0Ioc2tiKTsKKwl0eF9wcml2ID0gd2Z4X3NrYl90eF9wcml2KHNrYik7CisJaGFzX3N0
YSA9IHR4X3ByaXYtPmhhc19zdGE7CisJX3RyYWNlX3R4X3N0YXRzKGFyZywgc2tiLAorCQkJd2Z4
X3BlbmRpbmdfZ2V0X3BrdF91c19kZWxheSh3dmlmLT53ZGV2LCBza2IpKTsKKworCS8vIFlvdSBj
YW4gdG91Y2ggdG8gdHhfcHJpdiwgYnV0IGRvbid0IHRvdWNoIHRvIHR4X2luZm8tPnN0YXR1cy4K
Kwl3ZnhfdHhfZmlsbF9yYXRlcyh3dmlmLT53ZGV2LCB0eF9pbmZvLCBhcmcpOwogCXNrYl90cmlt
KHNrYiwgc2tiLT5sZW4gLSB3ZnhfdHhfZ2V0X2ljdl9sZW4odHhfcHJpdi0+aHdfa2V5KSk7CiAK
IAkvLyBGcm9tIG5vdywgeW91IGNhbiB0b3VjaCB0byB0eF9pbmZvLT5zdGF0dXMsIGJ1dCBkbyBu
b3QgdG91Y2ggdG8KLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==

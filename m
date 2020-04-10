Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8430A1A46C3
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 15:33:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37B7886C9D;
	Fri, 10 Apr 2020 13:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4uCeECBtmPwq; Fri, 10 Apr 2020 13:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BAFA862C1;
	Fri, 10 Apr 2020 13:33:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A89841BF27C
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 13:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9242E21541
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 13:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QCx07gZgmfsO for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 13:33:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2071.outbound.protection.outlook.com [40.107.243.71])
 by silver.osuosl.org (Postfix) with ESMTPS id AA624204F5
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 13:33:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTHjElsALF1Gt0AhXSaoGIaUGY+fiCY0amaedpjphvjxfDirnFyKtelV7eswOAmFREHnQYsr5YFhxNAOFZsCBM18fagXkQY9p4mkw3qbMb29KIDW5ylGyfE64rHoMgmOhH9REqRXe1St9+reAttbZrSKtUWTaPMIY0+tLjkHD9EhdXtuD/JwtxQeHkuV4Cvvc1Vase/rPb+eizcbeuVZa5ecoprQAeerIFwHD+uOr3nn9I36DqHOOR+LTxGNpcy9lJkmLA0QrQ4cGsERYhCZV2a6/sv85nwzRpiJfWNQ97qKstv5hsN0xT3fsAjli6YhWsmjsmubUlwQ6EnLKSQvuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gIZUy/h6rYzymHnG1QdL8KvuWbTsGwdnnb/NhWHB+MY=;
 b=EAzjcKlXqnPSEPMQA4rZM6PJvgklml498lVLyMfL3PzfAJgsq71G7lpXN42vcMHgrgqPLWMh57vskawM8nBpr+dae0KnzicS83dHKlsjecTaW0cIC+2IMRWLjdLnrRzDGQ7nixsdlknrbDYGuA4msELxRg1ceXkeAZz3SQ1EyIa+Nn1acivysCPvZgBgUJAimWKtuL271EP/XQRhBLsPNWIbU5J2dCHvAj1A1WoM4vV1ls5RBf7jEtgci06BbeNAHvSHOAbC+ikjWdBd+U2mb3iHQfPZoS2bOMfZsVQoVn8BidOZhAuuscA+qGI7g2FfnSSftraOZv4jlf3qmLs3ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gIZUy/h6rYzymHnG1QdL8KvuWbTsGwdnnb/NhWHB+MY=;
 b=ZsaMrTm1F05fpJyefqKxmjCE9to8EBCNIGp3BItNJaykdrRCMHr8pzf4dspiAgVqXpAyJiZanl4y41KnjlW7kNCmMVtToUI3KATZaCJjp22MYsiE0tDhikErXRKBKbtOMmHxtJ71pBljuSPbjqS6aAtAsNmNe1Fvi6Tca73vdWg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4398.namprd11.prod.outlook.com (2603:10b6:208:18b::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Fri, 10 Apr
 2020 13:33:12 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::3d0a:d9ac:3df4:8b1]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::3d0a:d9ac:3df4:8b1%6]) with mapi id 15.20.2878.021; Fri, 10 Apr 2020
 13:33:12 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 07/19] staging: wfx: remove useless call to wfx_tx_flush()
Date: Fri, 10 Apr 2020 15:32:27 +0200
Message-Id: <20200410133239.438347-8-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410133239.438347-1-Jerome.Pouiller@silabs.com>
References: <20200410133239.438347-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR15CA0056.namprd15.prod.outlook.com
 (2603:10b6:3:ae::18) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 DM5PR15CA0056.namprd15.prod.outlook.com (2603:10b6:3:ae::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.15 via Frontend Transport; Fri, 10 Apr 2020 13:33:10 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c02af5d3-a0a2-425c-b035-08d7dd53b71e
X-MS-TrafficTypeDiagnostic: MN2PR11MB4398:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR11MB4398D38CA9ABCE1B1DFD174293DE0@MN2PR11MB4398.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:169;
X-Forefront-PRVS: 0369E8196C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4063.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(346002)(396003)(136003)(39850400004)(376002)(107886003)(81156014)(54906003)(8676002)(86362001)(1076003)(4744005)(6666004)(8936002)(4326008)(52116002)(66574012)(7696005)(316002)(66556008)(66946007)(186003)(478600001)(2906002)(6486002)(2616005)(66476007)(16526019)(5660300002)(36756003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2nN0t1b3gOWheFtt7aWWG9QQUw72G3p8iKFH39lFEHWBlQ0b7VWhxSotjLzPhUaJokeeq7HDA07/IhFBNwY20d/FmvpzWIw7pEixhjysQrLO2SrKJMYZNGQfwDo+mz2KMzMu80N9A2Oacs3Kl+EFEGgJf+eerKeX6fSVIjvi94u97odJn1yw/EGe8GZcjQa0a2NXx7WsKOKYb4T2UIfEAwX5z25dfrWW/RgR16eyNWgRx/zny3TKs76sM1rm8WjUyaiL0N3+05kmtBDG/Qm+glIpNWwzeuKzXPpWSr6QXxXuG9P1TIVqj8LYo1x2cCd2/ugrPqs4QBwT75erP3QKYzZ8E7fwSDVvakiO4+thGv2ukbxm9yqwPnIn0KdhcASIpkHpk0hoYB4eeHFHAMejt/Peyu2tCcbIZcFNAGaEHOa9HFKoNZjoFsO1y8IT4FtH
X-MS-Exchange-AntiSpam-MessageData: 6IbbNJoRZpQUaDOUszOkW7jVPdJ220NNGJp/Uh8BeJerbndm2hHqkFSDL3xKQGXwarmc2m1ZDgRlMPoKf2OqvFhgEeoqzgtSz2LwhFzHQ9NrIj49QGfPQjnuO2NzciPvX40ZfeYYt6MGkOqY68ZgIVuRl47EFTrK18MEAZ/BxIE7d3NIBEVrr/HVff1ACkDiQirP3VpAoP6PKXlS2QzsvQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c02af5d3-a0a2-425c-b035-08d7dd53b71e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2020 13:33:12.3538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qb/wJvDMCnNregBVOfwizXOCpZS4lHPbsir4Rne4WoUkVFyI5AAn8B487uNPuGZn4q1Kug6hXXpQHNc4EYox6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4398
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
X2RvX2pvaW4oKSBjYWxscyB3ZnhfdHhfbG9ja19mbHVzaCgpIGF0ZSBiZWdpbm5pbmcgb2YgdGhl
IGZ1bmN0aW9uLgpUaGVyZWZvcmUsIHRoZSBzdWJzZXF1ZW50IGNhbGwgdG8gd2Z4X3R4X2ZsdXNo
KCkgaXMgdXNlbGVzcy4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUu
cG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIHwgMiAt
LQogMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5kZXggYWNiYmMz
YTQ0NzMzLi43NjkzY2UyMmYzMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtNDkzLDggKzQ5Myw2IEBAIHN0
YXRpYyB2b2lkIHdmeF9kb19qb2luKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQogCX0KIAlyY3VfcmVh
ZF91bmxvY2soKTsKIAotCXdmeF90eF9mbHVzaCh3dmlmLT53ZGV2KTsKLQogCWlmICh3dmlmX2Nv
dW50KHd2aWYtPndkZXYpIDw9IDEpCiAJCWhpZl9zZXRfYmxvY2tfYWNrX3BvbGljeSh3dmlmLCAw
eEZGLCAweEZGKTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

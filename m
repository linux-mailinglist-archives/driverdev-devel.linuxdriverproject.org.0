Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3FB210E7E
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 17:08:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD9698BE63;
	Wed,  1 Jul 2020 15:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5IxeSew8CP4; Wed,  1 Jul 2020 15:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B7DA8BEB5;
	Wed,  1 Jul 2020 15:08:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D45051BF30F
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF9168AA62
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nq+HcQLsRSK6 for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 15:08:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2058.outbound.protection.outlook.com [40.107.237.58])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E112C8A9E3
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 15:08:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWXfQ+dyPq6nn/84lC1n6QxQKNwxYE13n7NDKySWMsPjp6Hp56JeMa9/SzPi+9fkXrrraxE7EfO2h0zodh/bK0zHau9+PQJatyRXqGXCuSGYl6nkcORQ5izTxh1ISH0ulNL+jEtlDANhnrfRCj6RGL2/JLY89hTzh17WODaJa+F/wwGxmb9jWveFGJNPJyct/+1xnDe9yLcAPva6t5MtBw5ITIANrmuaNwq2HYoINxF1ilc0/1JUNFQNzi1uDvC8VXQ74nX/aaozj3y98LJb0Ve1caCRKX8R9wdGDYHfnFLO4aNOREv18NHllfJ2UOffsU/KSdi2V9xTdS2EpyC02Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7pEYsHPpbXvzL6FnSTWAELx9kwwDtV4QGWMWXcbdw48=;
 b=StAJwQcIJcD7YCLfo/Lek+xTyl9S3nrE/AbvcLCmjFs1SedMGtRCn1egCaOXJEdsnkMycNMdMtqG3rJP7c6ATqCoUpuXFJyI2NsfbrmE16UvzvGOlzdqBMtHOe92oTPc81XZvcdvQkDp4C9KLOWANiluTcisq3jwQsR35iaoGSftECtJY6i1QYgzlK7ZTTyhduMe+V2qWV6BuHW6d9xi4vkIhcwJV4I3+sJMmIi6hm0z7FQbm9+hwgnMeVna+X3KzDLhkRTRrWmSheKwLtlajDUi6auOAFH+x/jd16uZ00BVrzsiNOdFAf+bQvvM6g21ZOlTfuF6kDF0qfX6FEliwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7pEYsHPpbXvzL6FnSTWAELx9kwwDtV4QGWMWXcbdw48=;
 b=PVHp4wgR6YqF5eTaaU8kOUfT/s91JSfpMaUnhQIZGJepTHpwiMKDmT74VZ/c+wL/1b8aYJmbusyXxbsQ7ufBFkGoMKxqq0XgPeDQ696X42RW4mbMiUXZTETqImQ9iPpxd0DYDhCJBakSxeIOGlr1++VJQEftjD/BXoNVgInNquc=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4736.namprd11.prod.outlook.com (2603:10b6:806:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.22; Wed, 1 Jul
 2020 15:08:16 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3131.033; Wed, 1 Jul 2020
 15:08:16 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 08/13] staging: wfx: drop counter of buffered frames
Date: Wed,  1 Jul 2020 17:07:02 +0200
Message-Id: <20200701150707.222985-9-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200701150707.222985-1-Jerome.Pouiller@silabs.com>
References: <20200701150707.222985-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR07CA0143.namprd07.prod.outlook.com
 (2603:10b6:3:13e::33) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM5PR07CA0143.namprd07.prod.outlook.com (2603:10b6:3:13e::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.21 via Frontend Transport; Wed, 1 Jul 2020 15:08:15 +0000
X-Mailer: git-send-email 2.27.0
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7457a744-0560-4351-37d2-08d81dd0950f
X-MS-TrafficTypeDiagnostic: SA0PR11MB4736:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4736666A050F61CEEE130A47936C0@SA0PR11MB4736.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 04519BA941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4VkvSWqgCkqm0A7Cfp8oUU2xEfnB60kihPgG47viZsCo9Cr/a1xUglJ3ATaXl5BdTv39CWIoCY008FuhOa60qpXZIpwFyw7MFNZnOS8A0YbbXeZAKqDtnuo2WWyOx5+YH05Fgn0eA8hVgw1klfjq+NiaK+aWFoW5XjwseAq6+IJtgiexlwyccAcTBlezpwEzJ3dY4PF4QUdeKGGCjUYkApAmmRsC7BWZvX12ppQsXzUPCUDA1fcXconjHtH/t7ksQ9zmQ2NrvYjiP24fm0Rwt5Ql6sHZYaP0/w/JgMz/0e0J9D52jYz+vChR1wjNbxyuvd4Gc3mZFf+02YR1xoo5Xg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(366004)(346002)(376002)(396003)(136003)(5660300002)(6486002)(86362001)(6666004)(66574015)(36756003)(2906002)(186003)(83380400001)(16526019)(8936002)(66556008)(66476007)(107886003)(4326008)(8676002)(2616005)(1076003)(478600001)(316002)(54906003)(66946007)(52116002)(7696005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: iPiUrPr6yGm9wUEriqgzw6oo2GK5LNkdgQiS0qXkwkXnWZzqrvBij6IPM+4Q+3LW5wOJib6+ZzbStkyb3J3Dpw8OOIqhYJaBgb8gPynRdh6qUNUiY6wrpvul3GYPdcX0Ry/KPbtRTTBLRyaYRheWz3e/M/0cwHXqt1ZCs8H7g2Ef1FFS8HdB+u2nRbAeidTCXdv6Bn6w1BntoL1j08Y33ix1UTwbHabPK11jCCKFvdB86zSytvopxTbTMvLZFOjPiW7ayYx6H/nck5rtifh4dWityRtuOcQ0i6AwPnt8stvSIPrSlOkuabCc9Rt0vGH5kxH6fbXqNF8U4d77JNhlM2wcZ1fCM3Dr7hiPG2LX7Fp3K2FY9QkvVE6CE5lMpWf2/ZA8ntqG23g7iAOkgZshQbziVmmeNS9PbMTWHbAlGczDXLEDmlj5vsaj9uR5QucqdbUxPQtgtfspngd5poq4szr1cxKWENQNjnqvAtZ+moOEkKrTSsYS39dCwpgd1uIFjC9x2AKuOhujwGO0MpUetR/A9NrW3ybUvRecCFS8inY=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7457a744-0560-4351-37d2-08d81dd0950f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2020 15:08:16.7109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AVi/vUHFoqoOYGRj5HNMF5P6uVT9lI8YlAOcP/vG7RfoLGxuTlPSP5/rO22waW9k7d8pjwRWQeq+VW5i2jJg2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4736
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2lu
Y2UgdGhlIGRyaXZlciBkb2VzIG5vdCBjYWxsIGllZWU4MDIxMV9zdGFfc2V0X2J1ZmZlcmVkKCkg
YW55bW9yZSwgaXQKaXMgbm8gbW9yZSBuZWNlc3NhcnkgdG8gbWFpbnRhaW4gYSBjb3VudGVyIG9m
IGJ1ZmZlcmVkIGZyYW1lcyBmb3IgZWFjaApzdGF0aW9ucy4KClRoaXMgY2hhbmdlIGFsbG93cyB0
byBzaW1wbGlmeSB0aGUgcHJvY2Vzc2luZyBpbiBtdWx0aXBsZSBwbGFjZXMgaW4gdGhlCmRyaXZl
ci4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2ls
YWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyB8IDUwIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHgu
aCB8ICAxIC0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgICAgIHwgIDggLS0tLS0tCiBkcml2
ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oICAgICB8ICAzIC0tLQogNCBmaWxlcyBjaGFuZ2VkLCA2MiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyBi
L2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCmluZGV4IDMyNDRhNzY4MzQ1YzUuLjVjNzQ0
ZDljOGMxMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCisrKyBi
L2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCkBAIC0yMTMsMjIgKzIxMyw2IEBAIHN0YXRp
YyBib29sIGllZWU4MDIxMV9pc19hY3Rpb25fYmFjayhzdHJ1Y3QgaWVlZTgwMjExX2hkciAqaGRy
KQogCXJldHVybiB0cnVlOwogfQogCi1zdGF0aWMgdm9pZCB3ZnhfdHhfbWFuYWdlX3BtKHN0cnVj
dCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgwMjExX2hkciAqaGRyLAotCQkJICAgICBzdHJ1
Y3Qgd2Z4X3R4X3ByaXYgKnR4X3ByaXYsCi0JCQkgICAgIHN0cnVjdCBpZWVlODAyMTFfc3RhICpz
dGEpCi17Ci0Jc3RydWN0IHdmeF9zdGFfcHJpdiAqc3RhX3ByaXY7Ci0JaW50IHRpZCA9IGllZWU4
MDIxMV9nZXRfdGlkKGhkcik7Ci0KLQlpZiAoc3RhKSB7Ci0JCXR4X3ByaXYtPmhhc19zdGEgPSB0
cnVlOwotCQlzdGFfcHJpdiA9IChzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICopJnN0YS0+ZHJ2X3ByaXY7
Ci0JCXNwaW5fbG9ja19iaCgmc3RhX3ByaXYtPmxvY2spOwotCQlzdGFfcHJpdi0+YnVmZmVyZWRb
dGlkXSsrOwotCQlzcGluX3VubG9ja19iaCgmc3RhX3ByaXYtPmxvY2spOwotCX0KLX0KLQogc3Rh
dGljIHU4IHdmeF90eF9nZXRfbGlua19pZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGll
ZWU4MDIxMV9zdGEgKnN0YSwKIAkJCSAgICAgc3RydWN0IGllZWU4MDIxMV9oZHIgKmhkcikKIHsK
QEAgLTQwNiw3ICszOTAsNiBAQCBzdGF0aWMgaW50IHdmeF90eF9pbm5lcihzdHJ1Y3Qgd2Z4X3Zp
ZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKIAlyZXEtPnR4X2ZsYWdzLnJldHJ5
X3BvbGljeV9pbmRleCA9IHdmeF90eF9nZXRfcmF0ZV9pZCh3dmlmLCB0eF9pbmZvKTsKIAogCS8v
IEF1eGlsaWFyeSBvcGVyYXRpb25zCi0Jd2Z4X3R4X21hbmFnZV9wbSh3dmlmLCBoZHIsIHR4X3By
aXYsIHN0YSk7CiAJd2Z4X3R4X3F1ZXVlc19wdXQod3ZpZiwgc2tiKTsKIAlpZiAodHhfaW5mby0+
ZmxhZ3MgJiBJRUVFODAyMTFfVFhfQ1RMX1NFTkRfQUZURVJfRFRJTSkKIAkJc2NoZWR1bGVfd29y
aygmd3ZpZi0+dXBkYXRlX3RpbV93b3JrKTsKQEAgLTQ0OSwzNSArNDMyLDYgQEAgdm9pZCB3Znhf
dHgoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdHhfY29udHJvbCAq
Y29udHJvbCwKIAlpZWVlODAyMTFfdHhfc3RhdHVzX2lycXNhZmUod2Rldi0+aHcsIHNrYik7CiB9
CiAKLXN0YXRpYyBzdHJ1Y3QgaWVlZTgwMjExX2hkciAqd2Z4X3NrYl9oZHI4MDIxMShzdHJ1Y3Qg
c2tfYnVmZiAqc2tiKQotewotCXN0cnVjdCBoaWZfbXNnICpoaWYgPSAoc3RydWN0IGhpZl9tc2cg
Kilza2ItPmRhdGE7Ci0Jc3RydWN0IGhpZl9yZXFfdHggKnJlcSA9IChzdHJ1Y3QgaGlmX3JlcV90
eCAqKWhpZi0+Ym9keTsKLQotCXJldHVybiAoc3RydWN0IGllZWU4MDIxMV9oZHIgKikocmVxLT5m
cmFtZSArIHJlcS0+ZGF0YV9mbGFncy5mY19vZmZzZXQpOwotfQotCi1zdGF0aWMgdm9pZCB3Znhf
dHhfdXBkYXRlX3N0YShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9oZHIg
KmhkcikKLXsKLQlpbnQgdGlkID0gaWVlZTgwMjExX2dldF90aWQoaGRyKTsKLQlzdHJ1Y3Qgd2Z4
X3N0YV9wcml2ICpzdGFfcHJpdjsKLQlzdHJ1Y3QgaWVlZTgwMjExX3N0YSAqc3RhOwotCi0JcmN1
X3JlYWRfbG9jaygpOyAvLyBwcm90ZWN0IHN0YQotCXN0YSA9IGllZWU4MDIxMV9maW5kX3N0YSh3
dmlmLT52aWYsIGhkci0+YWRkcjEpOwotCWlmIChzdGEpIHsKLQkJc3RhX3ByaXYgPSAoc3RydWN0
IHdmeF9zdGFfcHJpdiAqKSZzdGEtPmRydl9wcml2OwotCQlzcGluX2xvY2tfYmgoJnN0YV9wcml2
LT5sb2NrKTsKLQkJV0FSTighc3RhX3ByaXYtPmJ1ZmZlcmVkW3RpZF0sICJpbmNvbnNpc3RlbnQg
bm90aWZpY2F0aW9uIik7Ci0JCXN0YV9wcml2LT5idWZmZXJlZFt0aWRdLS07Ci0JCXNwaW5fdW5s
b2NrX2JoKCZzdGFfcHJpdi0+bG9jayk7Ci0JfSBlbHNlIHsKLQkJZGV2X2RiZyh3dmlmLT53ZGV2
LT5kZXYsICIlczogc3RhIGRvZXMgbm90IGV4aXN0IGFueW1vcmVcbiIsCi0JCQlfX2Z1bmNfXyk7
Ci0JfQotCXJjdV9yZWFkX3VubG9jaygpOwotfQotCiBzdGF0aWMgdm9pZCB3Znhfc2tiX2R0b3Io
c3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBza19idWZmICpza2IpCiB7CiAJc3RydWN0IGhp
Zl9tc2cgKmhpZiA9IChzdHJ1Y3QgaGlmX21zZyAqKXNrYi0+ZGF0YTsKQEAgLTU1Myw4ICs1MDcs
NiBAQCB2b2lkIHdmeF90eF9jb25maXJtX2NiKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBjb25zdCBz
dHJ1Y3QgaGlmX2NuZl90eCAqYXJnKQogCiAJLy8gWW91IGNhbiB0b3VjaCB0byB0eF9wcml2LCBi
dXQgZG9uJ3QgdG91Y2ggdG8gdHhfaW5mby0+c3RhdHVzLgogCXdmeF90eF9maWxsX3JhdGVzKHdk
ZXYsIHR4X2luZm8sIGFyZyk7Ci0JaWYgKHR4X3ByaXYtPmhhc19zdGEpCi0JCXdmeF90eF91cGRh
dGVfc3RhKHd2aWYsIHdmeF9za2JfaGRyODAyMTEoc2tiKSk7CiAJc2tiX3RyaW0oc2tiLCBza2It
PmxlbiAtIHdmeF90eF9nZXRfaWN2X2xlbih0eF9wcml2LT5od19rZXkpKTsKIAogCS8vIEZyb20g
bm93LCB5b3UgY2FuIHRvdWNoIHRvIHR4X2luZm8tPnN0YXR1cywgYnV0IGRvIG5vdCB0b3VjaCB0
bwpAQCAtNjM0LDggKzU4Niw2IEBAIHZvaWQgd2Z4X2ZsdXNoKHN0cnVjdCBpZWVlODAyMTFfaHcg
Kmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLAogCXdoaWxlICgoc2tiID0gc2tiX2RlcXVl
dWUoJmRyb3BwZWQpKSAhPSBOVUxMKSB7CiAJCWhpZiA9IChzdHJ1Y3QgaGlmX21zZyAqKXNrYi0+
ZGF0YTsKIAkJd3ZpZiA9IHdkZXZfdG9fd3ZpZih3ZGV2LCBoaWYtPmludGVyZmFjZSk7Ci0JCWlm
ICh3Znhfc2tiX3R4X3ByaXYoc2tiKS0+aGFzX3N0YSkKLQkJCXdmeF90eF91cGRhdGVfc3RhKHd2
aWYsIHdmeF9za2JfaGRyODAyMTEoc2tiKSk7CiAJCWllZWU4MDIxMV90eF9pbmZvX2NsZWFyX3N0
YXR1cyhJRUVFODAyMTFfU0tCX0NCKHNrYikpOwogCQl3Znhfc2tiX2R0b3Iod3ZpZiwgc2tiKTsK
IAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguaCBiL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5oCmluZGV4IGIxNzI3ZGRlY2Q1ZTIuLmNmZjdiOWZmOTlhOTkg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5oCkBAIC0zNiw3ICszNiw2IEBAIHN0cnVjdCB0eF9wb2xpY3lf
Y2FjaGUgewogc3RydWN0IHdmeF90eF9wcml2IHsKIAlrdGltZV90IHhtaXRfdGltZXN0YW1wOwog
CXN0cnVjdCBpZWVlODAyMTFfa2V5X2NvbmYgKmh3X2tleTsKLQlib29sIGhhc19zdGE7CiB9IF9f
cGFja2VkOwogCiB2b2lkIHdmeF90eF9wb2xpY3lfaW5pdChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZik7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuYwppbmRleCA4NWQ0YmMyOTQ5ODgyLi4yYzBhYjUxZmM5MmRhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmMKQEAgLTQzMCw3ICs0MzAsNiBAQCBpbnQgd2Z4X3N0YV9hZGQoc3RydWN0IGllZWU4MDIxMV9o
dyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCiAJc3RydWN0IHdmeF92aWYgKnd2aWYg
PSAoc3RydWN0IHdmeF92aWYgKil2aWYtPmRydl9wcml2OwogCXN0cnVjdCB3Znhfc3RhX3ByaXYg
KnN0YV9wcml2ID0gKHN0cnVjdCB3Znhfc3RhX3ByaXYgKikmc3RhLT5kcnZfcHJpdjsKIAotCXNw
aW5fbG9ja19pbml0KCZzdGFfcHJpdi0+bG9jayk7CiAJc3RhX3ByaXYtPnZpZl9pZCA9IHd2aWYt
PmlkOwogCiAJLy8gSW4gc3RhdGlvbiBtb2RlLCB0aGUgZmlybXdhcmUgaW50ZXJwcmV0cyBuZXcg
bGluay1pZCBhcyBhIFRETFMgcGVlci4KQEAgLTQ1MCwxNCArNDQ5LDcgQEAgaW50IHdmeF9zdGFf
cmVtb3ZlKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlm
LAogewogCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gKHN0cnVjdCB3ZnhfdmlmICopdmlmLT5kcnZf
cHJpdjsKIAlzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICpzdGFfcHJpdiA9IChzdHJ1Y3Qgd2Z4X3N0YV9w
cml2ICopJnN0YS0+ZHJ2X3ByaXY7Ci0JaW50IGk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlf
U0laRShzdGFfcHJpdi0+YnVmZmVyZWQpOyBpKyspCi0JCWlmIChzdGFfcHJpdi0+YnVmZmVyZWRb
aV0pCi0JCQkvLyBOb3QgYW4gZXJyb3IgaWYgcGFpcmVkIHdpdGggdHJhY2UgaW4KLQkJCS8vIHdm
eF90eF91cGRhdGVfc3RhKCkKLQkJCWRldl9kYmcod3ZpZi0+d2Rldi0+ZGV2LCAicmVsZWFzZSBz
dGF0aW9uIHdoaWxlICVkIHBlbmRpbmcgZnJhbWUgb24gcXVldWUgJWQiLAotCQkJCXN0YV9wcml2
LT5idWZmZXJlZFtpXSwgaSk7CiAJLy8gU2VlIG5vdGUgaW4gd2Z4X3N0YV9hZGQoKQogCWlmICgh
c3RhX3ByaXYtPmxpbmtfaWQpCiAJCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL3dmeC9zdGEuaCBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgKaW5kZXggOGEyMGFkOWFl
MDE3ZS4uNDM4MDhjZWY0Nzg1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEu
aAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oCkBAIC0xNiw5ICsxNiw2IEBAIHN0cnVj
dCB3ZnhfdmlmOwogc3RydWN0IHdmeF9zdGFfcHJpdiB7CiAJaW50IGxpbmtfaWQ7CiAJaW50IHZp
Zl9pZDsKLQlpbnQgYnVmZmVyZWRbSUVFRTgwMjExX05VTV9USURTXTsKLQkvLyBFbnN1cmUgYXRv
bWljaXR5IG9mICJidWZmZXJlZCIgYW5kIGNhbGxzIHRvIGllZWU4MDIxMV9zdGFfc2V0X2J1ZmZl
cmVkKCkKLQlzcGlubG9ja190IGxvY2s7CiB9OwogCiAvLyBtYWM4MDIxMSBpbnRlcmZhY2UKLS0g
CjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==

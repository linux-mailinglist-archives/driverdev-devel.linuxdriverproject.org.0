Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4277E293D1E
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 15:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E976386B5E;
	Tue, 20 Oct 2020 13:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oHZFlT0SooKr; Tue, 20 Oct 2020 13:15:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31CBD8696D;
	Tue, 20 Oct 2020 13:15:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6391BF852
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 13:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 57E2B87304
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 13:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWwFwGwT5avn for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 13:15:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2076.outbound.protection.outlook.com [40.107.92.76])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5418B872D8
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 13:15:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HdOKQER4I8wJYnnF61IYbKT681DamCaqoILNBg1a8dxkMNb5El0A4BCnT7HrfOyqFalVojpDTbUVXHuQU1YBF2pP4FHlOvGcNGRzsk1ncg2Fkt+ieydU2cf7IujvzCezIrjpirjSeoQRDj/wdyfHKSoIvTzMHlaoGDIZ6S03UNK5O/skLMld2N2XCKQJoye0jAW2r/DQDwcC/LxUPgsem/5JvS2fS8U2nKLvbHJKde780bWXhrbKsGoGha1nrl/CCZF1HxBuo075I76w8M6SkJvfMh9jm1SgxRK8azrALr5cVIJHmlku4TRNOLtY44nvHQldUxRZ6wiLx8tvGI5EKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yVDm7W0akEUjkcRCCEJ1oAdvjNfySJu4A7QXWZ6KM9c=;
 b=S4l8GKp/JdKgBqaHbUOJ72zilSRYY8pddRmt4SLSxJeJnTBW8xKAHLlWDyCjdPYvSlidupNQkauVrEHWsp5OsUgwk5vgQ+jmMl2EEXYDyCzMX/HOHrYKb5FOJzslv3HW6QJcxzSHYxKrbp/I/KFMO3N8cWWRNmAkrJ/pxYhxLAV5eIX9zxI//XfK9wLyHtCzs/BHrJEsEWbO4JYKoYtHjP6aQQoLipGpdrQsM8+INFxmWOkcDuK2LowV5+FE21vt2qi5a9e+cu26eHiC/9pJ0IPxcnjItUKIRYVwsfN1wbqlFGkcRMlcFUBqlQB30RsYTI9VLCXKGSH5HcIh/P9hjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yVDm7W0akEUjkcRCCEJ1oAdvjNfySJu4A7QXWZ6KM9c=;
 b=oOJLuJOVOCnL9JwdJg4xeJ5qBQ4sHgYnpw6Fcy92BuKn4LybOPp9vfaPggQDd419UCZds6VY+M03HSQdX6VyBKttDbPUIc9dOs1JctCv7Gwd9OD7ynSiIlFP7jyEKiWZTuMO2TXMd1l2mOGiTB29PWRAy0xdxRS+U6y9cy3gEXE=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2656.namprd11.prod.outlook.com (2603:10b6:805:58::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.28; Tue, 20 Oct
 2020 12:59:29 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3477.028; Tue, 20 Oct 2020
 12:59:29 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v2 20/24] wfx: add scan.c/scan.h
Date: Tue, 20 Oct 2020 14:58:13 +0200
Message-Id: <20201020125817.1632995-21-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020125817.1632995-1-Jerome.Pouiller@silabs.com>
References: <20201020125817.1632995-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [37.71.187.125]
X-ClientProxiedBy: PR3P192CA0026.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:56::31) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (37.71.187.125) by
 PR3P192CA0026.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:56::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.21 via Frontend Transport; Tue, 20 Oct 2020 12:59:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: df54ed68-b836-488d-4ca6-08d874f7fb29
X-MS-TrafficTypeDiagnostic: SN6PR11MB2656:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB26560D5C635B1E2578A4CECB931F0@SN6PR11MB2656.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wtyf8Ilyfpiqr58R957hi4Ay0EQoSzwklbIwBJKvbsK/Bn/tYEC9XZfpzP92S4+nB67bhtzyxvVLCU7IdhseGRRM5wGdZPz/t9mRWqMZkXqZXqoPatYGs60YiS0pTqhIqGTprUrPd8BfP6LxeEKKAnpmEt1o1W4IzR7nRzC3beZOdW4r+mxrEdEX+uYi2EjO9Jla6BmKrGPBTaVYewV7LN+Y/9MozPMmueuWUVQzNFEQKM13ixeBZSenrbDKJkI/ur7HUnl4i896HI4pfBtWjy6ocTdx5TSQ4Eyf9TkYQBC9WHbwc+7mbUhu8c0PyBZuuypyHcedybtG4nHbepuD0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(136003)(346002)(376002)(39840400004)(186003)(316002)(4326008)(107886003)(8676002)(86362001)(26005)(2906002)(7696005)(478600001)(16526019)(956004)(6486002)(52116002)(36756003)(8936002)(2616005)(54906003)(5660300002)(1076003)(7416002)(66574015)(6666004)(66556008)(66476007)(66946007)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 5DoIHMgujHJ59y0kNdjTPrLp2Dht8mET5vnzGCdyFU6CxZdtkApxfLiK2tuL7XasYGC8vZGWMHUiqhUqaIpkYuXEUQuaRVwN4bemJ4wKN3r2juD0NhogbjRs0cbeBRPszjFMxHwOZRju+LAq3jNiQrAc1kJx5HycQHB8cbshjMZOG62LePKUTd3QegGNVNgRM/CWeSDwKGn1AtYUgP4ovhgbAQ32QBvkE7E5G5L74uvEGvNA45BuqktcEw21w7zWC3HfbXx6OAyQXYRU2tBQgVj45mLyZySh30p0F+RRvn/w8san9xhz1A/lx6gHr6RPboL5IXMpGnuvoKtm3nSUS3S4QBNSZIPnUWRg+e0ctHrRkDHQEtH3OCN7OUyq4tLgWBv8B8Isx3lTgyJ+/7wt/DKP0wZmBFKS4sJly1V0gZBAaf6xMbjoc+i50JCkZ20Pw8yZBuQNtzJjyYMVBYuPlLveso2UwOlIIAasu8UZLUQqFaPmcN5m8Jsr6ETrwyBJZ3mIZ+fH20HZY6zYnqD8tq57ekTsUwGM/Fwo2UrtF0CurOtZ3AZVv72k6EUK8YHgL/m6UCV12E42xYuBpVIrjlhJ/DQCUFGBirVn88+hQtQBqe4xgeAnYFKFrJtMo3VVSarv9+LNXnPchExNROv6/Q==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df54ed68-b836-488d-4ca6-08d874f7fb29
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2020 12:59:29.3616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ts0NxaffZXg+3S8Frac32e7ZyDS9XNYWdPq+7CAIm7aGyYW/XpAsC9ca023SrlnaDYZgw8ee5z5faExtXHOfSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2656
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5jIHwgMTMyICsrKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nh
bi5oIHwgIDIyICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE1NCBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9zY2FuLmMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uaAoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5jIGIvZHJp
dmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9zY2FuLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi5mYjQ3YzdjZGRmMmYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2
ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uYwpAQCAtMCwwICsxLDEzMiBAQAorLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQorLyoKKyAqIFNjYW4gcmVsYXRl
ZCBmdW5jdGlvbnMuCisgKgorICogQ29weXJpZ2h0IChjKSAyMDE3LTIwMjAsIFNpbGljb24gTGFi
b3JhdG9yaWVzLCBJbmMuCisgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNzc29uCisgKi8K
KyNpbmNsdWRlIDxuZXQvbWFjODAyMTEuaD4KKworI2luY2x1ZGUgInNjYW4uaCIKKyNpbmNsdWRl
ICJ3ZnguaCIKKyNpbmNsdWRlICJzdGEuaCIKKyNpbmNsdWRlICJoaWZfdHhfbWliLmgiCisKK3N0
YXRpYyB2b2lkIF9faWVlZTgwMjExX3NjYW5fY29tcGxldGVkX2NvbXBhdChzdHJ1Y3QgaWVlZTgw
MjExX2h3ICpodywKKwkJCQkJICAgICAgYm9vbCBhYm9ydGVkKQoreworCXN0cnVjdCBjZmc4MDIx
MV9zY2FuX2luZm8gaW5mbyA9IHsKKwkJLmFib3J0ZWQgPSBhYm9ydGVkLAorCX07CisKKwlpZWVl
ODAyMTFfc2Nhbl9jb21wbGV0ZWQoaHcsICZpbmZvKTsKK30KKworc3RhdGljIGludCB1cGRhdGVf
cHJvYmVfdG1wbChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKKwkJCSAgICAgc3RydWN0IGNmZzgwMjEx
X3NjYW5fcmVxdWVzdCAqcmVxKQoreworCXN0cnVjdCBza19idWZmICpza2I7CisKKwlza2IgPSBp
ZWVlODAyMTFfcHJvYmVyZXFfZ2V0KHd2aWYtPndkZXYtPmh3LCB3dmlmLT52aWYtPmFkZHIsCisJ
CQkJICAgICBOVUxMLCAwLCByZXEtPmllX2xlbik7CisJaWYgKCFza2IpCisJCXJldHVybiAtRU5P
TUVNOworCisJc2tiX3B1dF9kYXRhKHNrYiwgcmVxLT5pZSwgcmVxLT5pZV9sZW4pOworCWhpZl9z
ZXRfdGVtcGxhdGVfZnJhbWUod3ZpZiwgc2tiLCBISUZfVE1QTFRfUFJCUkVRLCAwKTsKKwlkZXZf
a2ZyZWVfc2tiKHNrYik7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgc2VuZF9zY2FuX3Jl
cShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKKwkJCSBzdHJ1Y3QgY2ZnODAyMTFfc2Nhbl9yZXF1ZXN0
ICpyZXEsIGludCBzdGFydF9pZHgpCit7CisJaW50IGksIHJldCwgdGltZW91dDsKKwlzdHJ1Y3Qg
aWVlZTgwMjExX2NoYW5uZWwgKmNoX3N0YXJ0LCAqY2hfY3VyOworCisJZm9yIChpID0gc3RhcnRf
aWR4OyBpIDwgcmVxLT5uX2NoYW5uZWxzOyBpKyspIHsKKwkJY2hfc3RhcnQgPSByZXEtPmNoYW5u
ZWxzW3N0YXJ0X2lkeF07CisJCWNoX2N1ciA9IHJlcS0+Y2hhbm5lbHNbaV07CisJCVdBUk4oY2hf
Y3VyLT5iYW5kICE9IE5MODAyMTFfQkFORF8yR0haLCAiYmFuZCBub3Qgc3VwcG9ydGVkIik7CisJ
CWlmIChjaF9jdXItPm1heF9wb3dlciAhPSBjaF9zdGFydC0+bWF4X3Bvd2VyKQorCQkJYnJlYWs7
CisJCWlmICgoY2hfY3VyLT5mbGFncyBeIGNoX3N0YXJ0LT5mbGFncykgJiBJRUVFODAyMTFfQ0hB
Tl9OT19JUikKKwkJCWJyZWFrOworCX0KKwl3ZnhfdHhfbG9ja19mbHVzaCh3dmlmLT53ZGV2KTsK
Kwl3dmlmLT5zY2FuX2Fib3J0ID0gZmFsc2U7CisJcmVpbml0X2NvbXBsZXRpb24oJnd2aWYtPnNj
YW5fY29tcGxldGUpOworCXJldCA9IGhpZl9zY2FuKHd2aWYsIHJlcSwgc3RhcnRfaWR4LCBpIC0g
c3RhcnRfaWR4LCAmdGltZW91dCk7CisJaWYgKHJldCkgeworCQl3ZnhfdHhfdW5sb2NrKHd2aWYt
PndkZXYpOworCQlyZXR1cm4gLUVJTzsKKwl9CisJcmV0ID0gd2FpdF9mb3JfY29tcGxldGlvbl90
aW1lb3V0KCZ3dmlmLT5zY2FuX2NvbXBsZXRlLCB0aW1lb3V0KTsKKwlpZiAocmVxLT5jaGFubmVs
c1tzdGFydF9pZHhdLT5tYXhfcG93ZXIgIT0gd3ZpZi0+dmlmLT5ic3NfY29uZi50eHBvd2VyKQor
CQloaWZfc2V0X291dHB1dF9wb3dlcih3dmlmLCB3dmlmLT52aWYtPmJzc19jb25mLnR4cG93ZXIp
OworCXdmeF90eF91bmxvY2sod3ZpZi0+d2Rldik7CisJaWYgKCFyZXQpIHsKKwkJZGV2X25vdGlj
ZSh3dmlmLT53ZGV2LT5kZXYsICJzY2FuIHRpbWVvdXRcbiIpOworCQloaWZfc3RvcF9zY2FuKHd2
aWYpOworCQlyZXR1cm4gLUVUSU1FRE9VVDsKKwl9CisJaWYgKHd2aWYtPnNjYW5fYWJvcnQpIHsK
KwkJZGV2X25vdGljZSh3dmlmLT53ZGV2LT5kZXYsICJzY2FuIGFib3J0XG4iKTsKKwkJcmV0dXJu
IC1FQ09OTkFCT1JURUQ7CisJfQorCXJldHVybiBpIC0gc3RhcnRfaWR4OworfQorCisvKgorICog
SXQgaXMgbm90IHJlYWxseSBuZWNlc3NhcnkgdG8gcnVuIHNjYW4gcmVxdWVzdCBhc3luY2hyb25v
dXNseS4gSG93ZXZlciwKKyAqIHRoZXJlIGlzIGEgYnVnIGluICJpdyBzY2FuIiB3aGVuIGllZWU4
MDIxMV9zY2FuX2NvbXBsZXRlZCgpIGlzIGNhbGxlZCBiZWZvcmUKKyAqIHdmeF9od19zY2FuKCkg
cmV0dXJuCisgKi8KK3ZvaWQgd2Z4X2h3X3NjYW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndv
cmspCit7CisJc3RydWN0IHdmeF92aWYgKnd2aWYgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0
IHdmeF92aWYsIHNjYW5fd29yayk7CisJc3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKmh3
X3JlcSA9IHd2aWYtPnNjYW5fcmVxOworCWludCBjaGFuX2N1ciwgcmV0OworCisJbXV0ZXhfbG9j
aygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7CisJbXV0ZXhfbG9jaygmd3ZpZi0+c2Nhbl9sb2Nr
KTsKKwlpZiAod3ZpZi0+am9pbl9pbl9wcm9ncmVzcykgeworCQlkZXZfaW5mbyh3dmlmLT53ZGV2
LT5kZXYsICIlczogYWJvcnQgaW4tcHJvZ3Jlc3MgUkVRX0pPSU4iLAorCQkJIF9fZnVuY19fKTsK
KwkJd2Z4X3Jlc2V0KHd2aWYpOworCX0KKwl1cGRhdGVfcHJvYmVfdG1wbCh3dmlmLCAmaHdfcmVx
LT5yZXEpOworCWNoYW5fY3VyID0gMDsKKwlkbyB7CisJCXJldCA9IHNlbmRfc2Nhbl9yZXEod3Zp
ZiwgJmh3X3JlcS0+cmVxLCBjaGFuX2N1cik7CisJCWlmIChyZXQgPiAwKQorCQkJY2hhbl9jdXIg
Kz0gcmV0OworCX0gd2hpbGUgKHJldCA+IDAgJiYgY2hhbl9jdXIgPCBod19yZXEtPnJlcS5uX2No
YW5uZWxzKTsKKwltdXRleF91bmxvY2soJnd2aWYtPnNjYW5fbG9jayk7CisJbXV0ZXhfdW5sb2Nr
KCZ3dmlmLT53ZGV2LT5jb25mX211dGV4KTsKKwlfX2llZWU4MDIxMV9zY2FuX2NvbXBsZXRlZF9j
b21wYXQod3ZpZi0+d2Rldi0+aHcsIHJldCA8IDApOworfQorCitpbnQgd2Z4X2h3X3NjYW4oc3Ry
dWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCisJCXN0cnVj
dCBpZWVlODAyMTFfc2Nhbl9yZXF1ZXN0ICpod19yZXEpCit7CisJc3RydWN0IHdmeF92aWYgKnd2
aWYgPSAoc3RydWN0IHdmeF92aWYgKil2aWYtPmRydl9wcml2OworCisJV0FSTl9PTihod19yZXEt
PnJlcS5uX2NoYW5uZWxzID4gSElGX0FQSV9NQVhfTkJfQ0hBTk5FTFMpOworCXd2aWYtPnNjYW5f
cmVxID0gaHdfcmVxOworCXNjaGVkdWxlX3dvcmsoJnd2aWYtPnNjYW5fd29yayk7CisJcmV0dXJu
IDA7Cit9CisKK3ZvaWQgd2Z4X2NhbmNlbF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3
LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKQoreworCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0g
KHN0cnVjdCB3ZnhfdmlmICopdmlmLT5kcnZfcHJpdjsKKworCXd2aWYtPnNjYW5fYWJvcnQgPSB0
cnVlOworCWhpZl9zdG9wX3NjYW4od3ZpZik7Cit9CisKK3ZvaWQgd2Z4X3NjYW5fY29tcGxldGUo
c3RydWN0IHdmeF92aWYgKnd2aWYpCit7CisJY29tcGxldGUoJnd2aWYtPnNjYW5fY29tcGxldGUp
OworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9zY2FuLmgg
Yi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmM3NDk2YTc2NjQ3OAotLS0gL2Rldi9udWxsCisrKyBi
L2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5oCkBAIC0wLDAgKzEsMjIgQEAK
Ky8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KKy8qCisgKiBTY2Fu
IHJlbGF0ZWQgZnVuY3Rpb25zLgorICoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDIwLCBTaWxp
Y29uIExhYm9yYXRvcmllcywgSW5jLgorICogQ29weXJpZ2h0IChjKSAyMDEwLCBTVC1Fcmljc3Nv
bgorICovCisjaWZuZGVmIFdGWF9TQ0FOX0gKKyNkZWZpbmUgV0ZYX1NDQU5fSAorCisjaW5jbHVk
ZSA8bmV0L21hYzgwMjExLmg+CisKK3N0cnVjdCB3ZnhfZGV2Oworc3RydWN0IHdmeF92aWY7CisK
K3ZvaWQgd2Z4X2h3X3NjYW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspOworaW50IHdm
eF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAq
dmlmLAorCQlzdHJ1Y3QgaWVlZTgwMjExX3NjYW5fcmVxdWVzdCAqcmVxKTsKK3ZvaWQgd2Z4X2Nh
bmNlbF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3Zp
ZiAqdmlmKTsKK3ZvaWQgd2Z4X3NjYW5fY29tcGxldGUoc3RydWN0IHdmeF92aWYgKnd2aWYpOwor
CisjZW5kaWYgLyogV0ZYX1NDQU5fSCAqLwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

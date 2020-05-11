Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902A01CDF64
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 May 2020 17:50:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AC9888BEE;
	Mon, 11 May 2020 15:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pqh6zZH3fgMt; Mon, 11 May 2020 15:49:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CC438820A;
	Mon, 11 May 2020 15:49:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 676B31BF3C1
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6273087D22
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UZ2fvqQLBan1 for <devel@linuxdriverproject.org>;
 Mon, 11 May 2020 15:49:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2051.outbound.protection.outlook.com [40.107.244.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4DB0187D7F
 for <devel@driverdev.osuosl.org>; Mon, 11 May 2020 15:49:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5zQJiSpH9hlmGYuOWqXLa/6Pbpkno6QDK7urHKxs+AHLuLGT8heOJK6Idf0XsrO9bA8f7/BUInAyOuoTGvxvJQsqfQgJgl2oCeFyyLUPRBk2hUayJmbPFqmdWKxqVnqfdD2rzfan3u2ZXoAcCasXGmpytakj+JqHIc43HSNxuwIWMcuuWcp1F/tmwIcxpHJ1UEb8p8YzCkPFtJYKI7AsLy6fdIE5NpuNcmbmdf77boloRRUL5Ezxvbc7VdAkJ23pGEETKkyRALLNWM1+qdgrW7ZoQ38mYLe4GIQ/O8FaZYXBMT3Iyg51P/GFkCrCATjOInveoka0GsGB2GZkQPBUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPxBtvqIwHnq/ZQoTtQPNlMQH3kPLlBXxz1s9sW4W/0=;
 b=IA68AMITDxsdWrLpWpPOrPSe7KPH0sV6KCnK4LxOMFp1d+RRXmf7PZjUIcepf9cjE1eVTVe1IuRNM9IJmNYnGeR4Dk5KrYtqLm6Yw+IMbhTCtKDMi+RcLzKGJ5GfmwXycMF+EZV68lyYvwjLVcORz9v7zug1ikWSkdjfVW3RYpCrTljdHXY2+XKu5kReXBgqGt/Ep5ZmtcCHz25VT35eAoCtxOyY7ub3/3ZJK/jWNUs8x/4r+E9CHn0Im65rSUwym34fER0j3HGHRmIsFvbk3B27gCeVQzwb98aFu4XS3t8M6w812NVTWCXZjnPEPqKOr1VOHpA2fu8fcqmsQQwC8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPxBtvqIwHnq/ZQoTtQPNlMQH3kPLlBXxz1s9sW4W/0=;
 b=flBbnpccrZxPTfpAQERR0JATmVAfgOVR3BtVqwGNV5HfOknYHq6r1mJNRVB4q9pbbK2tRluiWZ68Za1Diny/I2OQ/ihf3l7JPudye1t4QAFDyU5rdIXJiRq7VLlXqYmq7Ier5fFPEVNq3HweYC0Lt9FsAaQlaViqUipnGhr9edE=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1968.namprd11.prod.outlook.com (2603:10b6:300:113::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 15:49:53 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 15:49:53 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 04/17] staging: wfx: fix wrong bytes order
Date: Mon, 11 May 2020 17:49:17 +0200
Message-Id: <20200511154930.190212-5-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511154930.190212-1-Jerome.Pouiller@silabs.com>
References: <20200511154930.190212-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN6PR2101CA0026.namprd21.prod.outlook.com
 (2603:10b6:805:106::36) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 SN6PR2101CA0026.namprd21.prod.outlook.com (2603:10b6:805:106::36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.2 via Frontend
 Transport; Mon, 11 May 2020 15:49:51 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6feee6a4-3db7-43bd-aa73-08d7f5c2f1ef
X-MS-TrafficTypeDiagnostic: MWHPR11MB1968:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB19688FDA035E295349B9925093A10@MWHPR11MB1968.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1227;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OQdOT36REMq03/301w4IvTlUqBH4NGn6xD0E19PP1NP1PUpZgxP4tMaXa1/tGUcOAbS/UD8EH3GbnN0KIheCPoxlrC9A1ovmyG08OiysDS9EbgU+KO75zsuLU/XCmMoc7CeUi05rKvot9XIYF2ptNalhw/SAqAYjBCxoG1lijIaCJpUA0dxI3ft99ooIsl42Y1LNf841Z4nf8xcoX6tt3iq3Gkqpo/O1oa+0m6fZtfro2VFemkdgkvAme85yFHceaHGft/OH8Q8rObMjEmHOuGJMMAlJ12hcf9fQpOqxqahThOeUkNEfgjSvAxgA4i04SZPwLJmv7Nn9XzD93bsi6lvpJOFCl3S0ch0cb1pbe9JVsabATqvhbu3vHW0/BODuQ0kRxbTJUG7cpgarbjZG/bHTE6DRT/MmFy2QUH/sCYwcZhNK4F/40eTPGesbWPLpAnV1gW8RrISwSgiQIpAF07HGi+MJdgvU4Q7Oc/3FI1ghBmcmwRhibGEw8Y8aU5cVcUUzif+X0lnsQsIO4ywuuA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(346002)(136003)(396003)(376002)(366004)(33430700001)(186003)(52116002)(86362001)(316002)(5660300002)(7696005)(6486002)(33440700001)(478600001)(54906003)(6666004)(4326008)(107886003)(66574014)(36756003)(16526019)(26005)(8936002)(956004)(2616005)(8676002)(1076003)(66476007)(66946007)(66556008)(4744005)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 3nm5VXezN/ooj0A0VXy8I/NI9Q3ftGFpIthZD0dV43r+UizdDdYKiSiSLRAg4NRtiZMqS9qn7nv6+Dk70FU/n9puqwogyI+01EJOi8RmtnDDGIEFOSgwuKEvLqc8EWcfvtVoTC9c8bfK09kh4D3dDNGiUIfceoB4fha48VWZGCCz95a8qqrpBVAfSMQXFjO3ExkoKg9nu8B9TUEc1UsjrZClvL+nnVZINcDJxYbpx3Ns9JRSyZ5utg3EdWcdnxVQvBdS0EYGqK5K+yDb0GMi6P7RihcbhMTQ1DpFbxDfvXfou8GvHkh1rjRg436SotYFRdvh4zVZ4dhYEjI9ElBuDMn2aUsrWi2FMYwwg6KxoreFTJL35LyTZ5NxNKG4/5R+uh2MTn/YCrarhQv+lLqudCafuN9ogHZzuGzGQBlMDTKD6pRxwaoXAjeybwF/vNlDlMFsfzug2Q+VTOHY3At9rZBkx+JsS+ZZ99zjHVKYLxA=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6feee6a4-3db7-43bd-aa73-08d7f5c2f1ef
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 15:49:53.0549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KiHkIxJSJifUMye9Djzi2PcYjncj0lO8eUroWd1mm52QY7mg86mXB5p6PVYzz8+r3x1EpeGnkghy1P8mv4Drmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1968
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IGZpZWxkIHdha2V1cF9wZXJpb2RfbWF4IGZyb20gc3RydWN0IGhpZl9taWJfYmVhY29uX3dha2Vf
dXBfcGVyaW9kIGlzCmEgdTguIFNvLCBhc3NpZ25pbmcgaXQgYSBfX2xlMTYgcHJvZHVjZXMgYSBu
YXN0eSBidWcgb24gYmlnLWVuZGlhbgphcmNoaXRlY3R1cmVzLgoKU2lnbmVkLW9mZi1ieTogSsOp
csO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMv
c3RhZ2luZy93ZngvaGlmX3R4X21pYi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9o
aWZfdHhfbWliLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuYwppbmRleCA2NTM4
MWIyMjQzN2UuLjU2N2M2MWQxZmUyZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9o
aWZfdHhfbWliLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmMKQEAgLTMy
LDcgKzMyLDcgQEAgaW50IGhpZl9zZXRfYmVhY29uX3dha2V1cF9wZXJpb2Qoc3RydWN0IHdmeF92
aWYgKnd2aWYsCiAJc3RydWN0IGhpZl9taWJfYmVhY29uX3dha2VfdXBfcGVyaW9kIHZhbCA9IHsK
IAkJLndha2V1cF9wZXJpb2RfbWluID0gZHRpbV9pbnRlcnZhbCwKIAkJLnJlY2VpdmVfZHRpbSA9
IDAsCi0JCS53YWtldXBfcGVyaW9kX21heCA9IGNwdV90b19sZTE2KGxpc3Rlbl9pbnRlcnZhbCks
CisJCS53YWtldXBfcGVyaW9kX21heCA9IGxpc3Rlbl9pbnRlcnZhbCwKIAl9OwogCiAJaWYgKGR0
aW1faW50ZXJ2YWwgPiAweEZGIHx8IGxpc3Rlbl9pbnRlcnZhbCA+IDB4RkZGRikKLS0gCjIuMjYu
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==

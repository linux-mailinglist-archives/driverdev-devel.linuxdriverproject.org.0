Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCB81C55F8
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 14:53:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F3CD894B0;
	Tue,  5 May 2020 12:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w0-I6BPr5rlk; Tue,  5 May 2020 12:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0C5087FEA;
	Tue,  5 May 2020 12:53:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26B831BF3BC
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 12:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E2878941C
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 12:53:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dVIkfhI9QAqu for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 12:53:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2065.outbound.protection.outlook.com [40.107.223.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8584387FEA
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 12:53:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a2+NwKMuAgDgcU6ihmSbBANq/3XshjVH4UEqu3IteijXAeYM1dxpeNe65pT7ksYQ485WyNE+lmwlqI4GRNebfqTtAPI9oUzq/+wQz1rBgiif0qtZbinYe6cdPI9A6jquuOZg2XF0Z0QITGKTSCsYnBND3OUPkLk4CfdvXiRgrdpXXd6qfz8YIcBAKN9o1CGY/7vW2Y97Klr3h9BtrF9EEIuS2Aiz9kEljdtLwBuHtolr+6cdgP5dCdo4CoRdfIk8i6kOePAXHgyYldMwrsc0zAR3Z8HO/eH9hdEbPiSUX2JSPF++EcCoZtR4/vqdOTg1sxeuQfNyyUgXPFU0kYEv1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fqh9i9zscCRg6KNYtU+dKQ57CReCKoYmlR6a8QVmV+s=;
 b=BjMMSLSPIQv/feKdF8IGDGBqAZTQjkYSRRS46d+JiqPULrR66LalgtDvuz7iUnF95iAO6S3vkjgJRo9rmCfKl5UNTwRNhy9VoklwyzW+7XFwB/euTKYlUj0/YzrCugc2OHi7spN1R9SSX8b3Jt8Dn3KlVh4UTcwWQsdk2M/JDEuOS0S/DRIzcWCOe5VnmjhvQj5AkCqoPaqZIryeKGnnpYib/oalGQhqTIXJiBZ00EOPRMjF2T5xechvgWRKgyAtg/RXh1i+1fZgsMQ7mLN5IkKFt2zxenlJfJfV7hzLGoMEA0BtyJfm/JkqieFZcxRgmiJz8uNhExK13cSosNvpBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fqh9i9zscCRg6KNYtU+dKQ57CReCKoYmlR6a8QVmV+s=;
 b=RAmZxdHSrXRm1QR+FLSidpj+0dtc26UJtUoq1avZBEwU5OKlRH98k3KCqEvAs0LrZsAXL5ougHJHmEsVIxwYjSwExdFUTQg379aB4uugqq9sWEuaXUMdcN1C87NgE0FCcaq3Kge5eYubd4fvVgsyAXMlptQ81TCWy7XBLCod2U8=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1824.namprd11.prod.outlook.com (2603:10b6:300:110::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Tue, 5 May
 2020 12:38:22 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 12:38:22 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/15] staging: wfx: repair external IRQ for SDIO
Date: Tue,  5 May 2020 14:37:47 +0200
Message-Id: <20200505123757.39506-6-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200505123757.39506-1-Jerome.Pouiller@silabs.com>
References: <20200505123757.39506-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR3P189CA0022.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::27) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 PR3P189CA0022.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Tue, 5 May 2020 12:38:20 +0000
X-Mailer: git-send-email 2.26.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ce4bd42-1d5f-4e1e-2d7b-08d7f0f1328d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1824:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1824BA44A7CC975B752574B093A70@MWHPR11MB1824.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0394259C80
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tIKwI4+8dQG/RjhU/WGaiTMgdknsfezdW0QlKHvKwFCxJGlMpedBE6mW8H/WpjfRO+kFcITR4FZgIrzksKWkYOtSykJzABy6cARt2TFHjrX/My6xfQHqK+/7io7k0qCongr1h52a4k2WeFXu1HC+E49kidjtKdHgiq0PeynqBYk75H5K33IFy6OqMer5aiakPHEJF0Tf534whoairwZz7ObarXsbpHDNjoNKD6QjkjaYC/o7DbTnQ43X2NiXJ+vWPBjs834bplKKO8ibwRDfDVBmAbVTluAt8S0B9aRWQqEqm6QAWnknBLNDYCPIIIBf5V4Cwe9CbUlgTrayqYdGMIqOgLIHEdb0YR5hp/6FSoZyK5MovWpc7YH12vphClyPMY2rUNJIlcD9Y9AfOE7vjru409O0n7lvKAkaPGoICgvWnRwzodW9SH5bZo/87mbpijkOiMoFRxL2+fHFKVli4gtSegxdzv4zL3pcwA8g3qUEIWRnxjMJLXHFKRJjxF6QTQpvbtLZalkYV4IIucoCXQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(39850400004)(366004)(376002)(346002)(33430700001)(86362001)(6666004)(107886003)(8886007)(1076003)(6512007)(6486002)(66574012)(36756003)(5660300002)(2906002)(66476007)(6506007)(16526019)(186003)(52116002)(66946007)(66556008)(54906003)(2616005)(4326008)(8936002)(8676002)(316002)(33440700001)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 5XZVLeb4HQ28JcvB2MEwFK+/jsULNfsch3q999yW+PvWvqoJ1RlK1pP9xZEig8atieo9YUunnOzGyNhvjOj5PHBjONPeij2sLXeE3RM9UaNDQXhvu9VzVOthwnGz+CeB3hLJyAchzxdSapK2rdnYvhXheM7bqZchU95DTqNjXaLknVlEor2wn7DL+2zt8j768zTuu5+dBxJOr+VTUrCZGZSICIpWtyxrlKLN2CY8WhONG7uZJI8QAeHLZsYkTkt6MABeroAigabaufDiAINemQ+7dZqAyRiNxR4pm0OlIWnG3bspAqbqQYkX4XHDnQIG0Q5yVVis4PIUelO/cgKdWq+JisqCCK9G6vf+fb6X4aUYPWxm3tyRct1ivvQaONZC2AR9UTWlZTMEsNE50XSoKxZ7fiaewfts3FKBTQ/oI83fRFDHGJzZ+R8xM9fZR8GU7v74xiX5id1DDXFp0ETLkXhY9pVTMCjXQEKWO7sFi1yKbC9ptG1DfQQ/FnZmMDRU7HQOWdM6Aq26WVFo6QfiSykHWmsykic9zca7V7w1Rx1Dn3pn+nsuDN0yIltm4dPdt5ucko0yLOZQ3+NtJmj7Q+7TYZdXTAHdmN4TLV/m2PduxZ8M+VgcRp4OfaDuzBNxGG/eRVndHmI0XDwdnORdNXi1g0YZQ96IJxEsLSw+ROp/0pApUORo+brlnmgPU0H9ak6z7g+5dFtgZmqyO0csExQOAUh1pl601A0mJ/Dqni9tA8pF/kswydO76361jWf3g5h4A0ZNq9je361VPSo+7TY5h4Y4j7kdvVCC7Id3TvTp0yvwD1etQo18JtzCuQPvAy/0OCiz7KT20Tbnhwpy11Dl8bSl/wDg8Tmb06dFOf4=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce4bd42-1d5f-4e1e-2d7b-08d7f0f1328d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 12:38:22.4591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CkIEvWg8SDHZlHkx5YOspGtSd/9L2LmgpVsfE6rFWbnuSZpMXNM0vWndLAVWdKn8BxDIyJwxVC5SZNhH6ch/TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1824
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKV2hl
biB1c2VkIG92ZXIgU0RJTyBidXMsIGRldmljZSBpcyBhYmxlIHRvIHVzZSBhbiBleHRlcm5hbCBs
aW5lIHRvCnNpZ25hbCBJUlFzIChhbHNvIGNhbGxlZCBPdXQtT2YtQmFuZCBJUlEpLiBUaGUgY3Vy
cmVudCBjb2RlIGhhdmUgc2V2ZXJhbApwcm9ibGVtczoKICAxLiBUaGUgSVNSIGNhbm5vdCBkaXJl
Y3RseSBhY2tub3dsZWRnZSBJUlEgc2luY2UgYWNjZXNzIHRvIHRoZSBidXMgaXMKICAgICBub3Qg
YXRvbWljLiBUaGlzIHBhdGNoIHVzZSBhIHRocmVhZGVkIElSUSB0byBzb2x2ZSB0aGF0IGlzc3Vl
LgogIDIuIE9uIGNlcnRhaW4gcGxhdGZvcm1zLCBpdCBpcyBuZWNlc3NhcnkgdG8ga2VlcCBTRElP
IGludGVycnVwdGlvbgogICAgIGVuYWJsZWQgKHdpdGggcmVnaXN0ZXIgU0RJT19DQ0NSX0lFTngp
ICh0aGlzIHBhcnQgaGFzIGluc3BpcmVkIGZyb20KICAgICB0aGUgYnJjbWZtYWMgZHJpdmVyKS4K
ClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJz
LmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgfCAzOCArKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygr
KSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNf
c2Rpby5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc2Rpby5jCmluZGV4IDlhYzg3MTc4Mjcw
Zi4uMmY3ODIxMjBlNDM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlv
LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc2Rpby5jCkBAIC02LDEwICs2LDEyIEBA
CiAgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNzc29uCiAgKi8KICNpbmNsdWRlIDxsaW51
eC9tb2R1bGUuaD4KKyNpbmNsdWRlIDxsaW51eC9tbWMvc2Rpby5oPgogI2luY2x1ZGUgPGxpbnV4
L21tYy9zZGlvX2Z1bmMuaD4KICNpbmNsdWRlIDxsaW51eC9tbWMvY2FyZC5oPgogI2luY2x1ZGUg
PGxpbnV4L2ludGVycnVwdC5oPgogI2luY2x1ZGUgPGxpbnV4L29mX2lycS5oPgorI2luY2x1ZGUg
PGxpbnV4L2lycS5oPgogCiAjaW5jbHVkZSAiYnVzLmgiCiAjaW5jbHVkZSAid2Z4LmgiCkBAIC0x
MDYsMzEgKzEwOCw0MSBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qgd2Z4X3NkaW9faXJxX2hhbmRsZXJf
ZXh0KGludCBpcnEsIHZvaWQgKnByaXYpCiAKIHN0YXRpYyBpbnQgd2Z4X3NkaW9faXJxX3N1YnNj
cmliZShzdHJ1Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzKQogeworCXUzMiBmbGFnczsKIAlpbnQgcmV0
OworCXU4IGNjY3I7CiAKLQlpZiAoYnVzLT5vZl9pcnEpIHsKLQkJcmV0ID0gcmVxdWVzdF9pcnEo
YnVzLT5vZl9pcnEsIHdmeF9zZGlvX2lycV9oYW5kbGVyX2V4dCwKLQkJCQkgIElSUUZfVFJJR0dF
Ul9SSVNJTkcsICJ3ZngiLCBidXMpOwotCX0gZWxzZSB7CisJaWYgKCFidXMtPm9mX2lycSkgewog
CQlzZGlvX2NsYWltX2hvc3QoYnVzLT5mdW5jKTsKIAkJcmV0ID0gc2Rpb19jbGFpbV9pcnEoYnVz
LT5mdW5jLCB3Znhfc2Rpb19pcnFfaGFuZGxlcik7CiAJCXNkaW9fcmVsZWFzZV9ob3N0KGJ1cy0+
ZnVuYyk7CisJCXJldHVybiByZXQ7CiAJfQotCXJldHVybiByZXQ7CisKKwlzZGlvX2NsYWltX2hv
c3QoYnVzLT5mdW5jKTsKKwljY2NyID0gc2Rpb19mMF9yZWFkYihidXMtPmZ1bmMsIFNESU9fQ0ND
Ul9JRU54LCBOVUxMKTsKKwljY2NyIHw9IEJJVCgwKTsKKwljY2NyIHw9IEJJVChidXMtPmZ1bmMt
Pm51bSk7CisJc2Rpb19mMF93cml0ZWIoYnVzLT5mdW5jLCBjY2NyLCBTRElPX0NDQ1JfSUVOeCwg
TlVMTCk7CisJc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5mdW5jKTsKKwlmbGFncyA9IGlycV9nZXRf
dHJpZ2dlcl90eXBlKGJ1cy0+b2ZfaXJxKTsKKwlpZiAoIWZsYWdzKQorCQlmbGFncyA9IElSUUZf
VFJJR0dFUl9ISUdIOworCWZsYWdzIHw9IElSUUZfT05FU0hPVDsKKwlyZXR1cm4gZGV2bV9yZXF1
ZXN0X3RocmVhZGVkX2lycSgmYnVzLT5mdW5jLT5kZXYsIGJ1cy0+b2ZfaXJxLCBOVUxMLAorCQkJ
CQkgd2Z4X3NkaW9faXJxX2hhbmRsZXJfZXh0LCBmbGFncywKKwkJCQkJICJ3ZngiLCBidXMpOwog
fQogCiBzdGF0aWMgaW50IHdmeF9zZGlvX2lycV91bnN1YnNjcmliZShzdHJ1Y3Qgd2Z4X3NkaW9f
cHJpdiAqYnVzKQogewogCWludCByZXQ7CiAKLQlpZiAoYnVzLT5vZl9pcnEpIHsKLQkJZnJlZV9p
cnEoYnVzLT5vZl9pcnEsIGJ1cyk7Ci0JCXJldCA9IDA7Ci0JfSBlbHNlIHsKLQkJc2Rpb19jbGFp
bV9ob3N0KGJ1cy0+ZnVuYyk7Ci0JCXJldCA9IHNkaW9fcmVsZWFzZV9pcnEoYnVzLT5mdW5jKTsK
LQkJc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5mdW5jKTsKLQl9CisJaWYgKGJ1cy0+b2ZfaXJxKQor
CQlkZXZtX2ZyZWVfaXJxKCZidXMtPmZ1bmMtPmRldiwgYnVzLT5vZl9pcnEsIGJ1cyk7CisJc2Rp
b19jbGFpbV9ob3N0KGJ1cy0+ZnVuYyk7CisJcmV0ID0gc2Rpb19yZWxlYXNlX2lycShidXMtPmZ1
bmMpOworCXNkaW9fcmVsZWFzZV9ob3N0KGJ1cy0+ZnVuYyk7CiAJcmV0dXJuIHJldDsKIH0KIAot
LSAKMi4yNi4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK

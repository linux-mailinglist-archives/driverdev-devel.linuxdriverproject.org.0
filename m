Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E5124C32B
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 18:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84AC6880A1;
	Thu, 20 Aug 2020 16:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8wOGXHzTN1iK; Thu, 20 Aug 2020 16:14:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E06258806D;
	Thu, 20 Aug 2020 16:14:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E21E1BF2A9
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 16:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9AD57876D4
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 16:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjHEnr3uJWoZ for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 16:14:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2087.outbound.protection.outlook.com [40.107.93.87])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A5E387657
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 16:14:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T+Dbd7zPFKYi4rAeJCLIlwCM7XG/eXJ6KUMQCWsKI93vPJ/XnhsJcB34HTMQ6Nz2RiW6SE0zfNVlPi0awuRa/hy1TVRY1UnMks5B+Xx/r5cgzvsAiMOKvsyhINFamTDYUQkCFJuX/Yeyzxz623kupYygkNLvuAw/p+SFx+KSAaoxpi3mhP4id2lEaWwrEWjR6HHd8psEy9oLz4HleL3vVrf7tMRrxpKpza8OlcgzN5XwPwq1rygLWhiIMsgB6gfuXhHXLBZEkkg0+3scfLOWcyv9UK9CAqXjSeI8m9vIENq5L5/FNdIxMm3NEwsjIV99USrlooCM4X3zFH1//EAIPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6h3ZZF67h4YqACm/j8Eh1W5rXu/X68RUEDVrbinPXJ0=;
 b=NzVqqfjD7Q4GRlD4ETtRwOM6veXXtq8FEkZyRgOUY1guF4Zf9EoliYpJm7tSKH8S9DQ/cqDq7nyo3LHo7WNb9NeiHNYn/kADIAOpjqWjUYrQ7rxtFY07gYQdrYm6ImkL+JbJ+qneqGLYWaranjGStH+SsYz5QgoMNWz02E9U9jnGMDMBYiRQpTZs29Aq2pbiLwILyuyZtJP7d75ybAjBp2IuabjKoJ6/scmv+kMPcUpdrnZ3PENKCsPHMiuXCj+WojOSpqNYvz0JnytADuPzvt7s5aINt1gMWZW6Ipon6dxU1YQRRglHZH8Atl0I/s1DFtUd/nrmuIy3HJ54GHpTVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6h3ZZF67h4YqACm/j8Eh1W5rXu/X68RUEDVrbinPXJ0=;
 b=oZ1JMZaXV7eKxUvrxxI2YBxTyIOUx37h1RrEcv9nUh2sNVj+pcV+ZXbfRA5fwGV2UqHJWubz+EEdaj8azVq4YgIwjWOERN0IKwvkEwcEPCe1RjrZwF+oQSw8scnJcjapuZ/zNEe9+BEOXDzt9YxqlwibGUGhVR5qct0UjaSQDfM=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4541.namprd11.prod.outlook.com (2603:10b6:806:94::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Thu, 20 Aug
 2020 15:59:30 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3305.026; Thu, 20 Aug 2020
 15:59:30 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/12] staging: wfx: fix support for cipher AES_CMAC
 (multicast PMF)
Date: Thu, 20 Aug 2020 17:58:51 +0200
Message-Id: <20200820155858.351292-5-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
References: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::14) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by
 PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24 via Frontend Transport; Thu, 20 Aug 2020 15:59:28 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bca67b26-db81-4ebe-9009-08d8452205cd
X-MS-TrafficTypeDiagnostic: SA0PR11MB4541:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB454170AD7FB0B0AB17656E31935A0@SA0PR11MB4541.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TWVg6DG3eiB21MECuWbnP3t9H0akZNMU1rx3AW6BK9S+bOwp/8o5VR1pGBnXVfUiDkPbKOCtz+nANJDS/nDy08UByGm4Yi4kZRucyyfJjIKZx0cdIqSUsl2Rr0BAcZ2Cnyu/GTx7XQ/CBr9iSgBbooyY8TC9TuRhS/6qQgXU3Q4qfbWWGD1XtfBeM4pPY6coyHZDX5ubHbw7DpwhrZvku3yRpg/rmG85xjICBXf0tsns+avdmvmZb1R4LfWPCDJopLcIc94O8ueUtb+pFP9Mpn2vuASuA3BKf60VnZaIDAuBSqpNm9OTPSdNfFQWLLVJAknXydwIBcyAfdH9HwNqQ9xH/+9NUKtKNNWqEr5fpAQPulvgshz/QZiEmUXXVfSe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39850400004)(366004)(346002)(136003)(186003)(6666004)(2906002)(8676002)(316002)(16576012)(54906003)(956004)(26005)(66574015)(8936002)(2616005)(110011004)(52116002)(83380400001)(107886003)(1076003)(5660300002)(478600001)(36756003)(4326008)(66476007)(66556008)(66946007)(86362001)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6x+TvXr7TSr7JCOEqfz6qetQfcnwRTObTTQBiIa4LJmbnm6W3buHgDQjdAA/eysvjDlYB2N4/5saqfZ+nX8287Yd7nj5HCNLBc8+FrrNTeYpb5C9lUgLRlb1ElAZ4vrmu3scACTz2yoE/ruFQEratJ7nD6r1mVPOp+nb60fljG2MZBYK8q2C0imkuyi2uTT5CUZUpgVscp0TQGRaOxitKdNiE18JHybC03Fz0gDrY4d2v+zDWec8RKvgPy9D4znag9flXMj1mHrFYON59Zf7lS2l++4uVGU9BYYdBTxSr+daUGIMjEiSJPPT3r6IBmX8DMgdbH6mc3eXfWTp/ZJi4kkhySnVPBFu3ZjIAAuB4a0gfIa0ac1LrFTh92VdF1/8k1inTl3wLOebmYi5a3+7qJ9XnlEnnZuJwk6hXXFYBT2x1OHwaGkmqmeIP8sE5OE9k+xduflRq19ziq/WZ5N5BSnYzc7d5uXq6RLT1LScy79GV+aja7eY87XKblrJR/2+2euPRAl8NbVAdhO9o0roTS77XFrxByGCGdV6rEpeJqYbJMhWDLgbqq9QkbP6Vfe9yKyC8pts/9LEHYKrUm6Ovt2OzhHI0pAFwzbiXZMTKxlpFhCqLDeMIPE4HLI0tTZ0iY6SULCja10aZMFZ0H2N6A==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bca67b26-db81-4ebe-9009-08d8452205cd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2020 15:59:30.2856 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TS7wobsa/S3NUHrTOBh35EdMMbURwtV2/wf3kagY3pllGxUN+c07Pga972FjGRTpq7t6ktcYQzE22EXy2nkzfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4541
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
biBNRlAgaXMgZW5hYmxlZCwgdGhlIG11bHRpY2FzdCBtYW5hZ2VtZW50IGZyYW1lcyBhcmUgbm90
IHByb3RlY3RlZCwKaW4gZmFjdC4gSW5zdGVhZCwgYnV0IHRoZXkgc2hvdWxkIGluY2x1ZGUgYW4g
SUUgY29udGFpbmluZyB0aGUgTU1JQyBvZgp0aGUgZnJhbWVzIChpLmUuIGEgY3J5cHRvZ3JhcGhp
YyBzaWduYXR1cmUpLgoKVW50aWwgbm93LCB0aGUgZHJpdmVyIGRpZG4ndCBjb3JyZWN0bHkgZGV0
ZWN0IHRoaXMga2luZCBvZiBmcmFtZXMgKHRoZXkKYXJlIG5vdCBtYXJrZWQgcHJvdGVjdGVkIGJ1
dCB0aGV5IGFyZSBhc3NvY2lhdGVkIHRvIGEga2V5KSBhbmQgZGlkbid0CmFzayB0byB0aGUgZGV2
aWNlIHRvIGVuY3J5cHQgdGhlbS4KCkluIGFkZCwgdGhlIGRldmljZSBpcyBub3QgYWJsZSB0byBn
ZW5lcmF0ZSB0aGUgSUUgaXRzZWxmLiBNYWM4MDIxMSBoYXMKdG8gZ2VuZXJhdGUgdGhlIElFIGFu
ZCBsZXQgdGhlIGRldmljZSBjb21wdXRlIHRoZSBNTUlDLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0
bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3Rh
Z2luZy93ZngvZGF0YV90eC5jIHwgNSArKystLQogZHJpdmVycy9zdGFnaW5nL3dmeC9rZXkuYyAg
ICAgfCA0ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jIGIvZHJpdmVy
cy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKaW5kZXggNDFmOWFmZDQxZTE0Li5kMTZiNTE2YWQ3Y2Yg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5jCkBAIC0zMjUsNiArMzI1LDggQEAgc3RhdGljIGludCB3Znhf
dHhfZ2V0X2ljdl9sZW4oc3RydWN0IGllZWU4MDIxMV9rZXlfY29uZiAqaHdfa2V5KQogCiAJaWYg
KCFod19rZXkpCiAJCXJldHVybiAwOworCWlmIChod19rZXktPmNpcGhlciA9PSBXTEFOX0NJUEhF
Ul9TVUlURV9BRVNfQ01BQykKKwkJcmV0dXJuIDA7CiAJbWljX3NwYWNlID0gKGh3X2tleS0+Y2lw
aGVyID09IFdMQU5fQ0lQSEVSX1NVSVRFX1RLSVApID8gOCA6IDA7CiAJcmV0dXJuIGh3X2tleS0+
aWN2X2xlbiArIG1pY19zcGFjZTsKIH0KQEAgLTM1MCw4ICszNTIsNyBAQCBzdGF0aWMgaW50IHdm
eF90eF9pbm5lcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0
YSwKIAltZW1zZXQodHhfaW5mby0+cmF0ZV9kcml2ZXJfZGF0YSwgMCwgc2l6ZW9mKHN0cnVjdCB3
ZnhfdHhfcHJpdikpOwogCS8vIEZpbGwgdHhfcHJpdgogCXR4X3ByaXYgPSAoc3RydWN0IHdmeF90
eF9wcml2ICopdHhfaW5mby0+cmF0ZV9kcml2ZXJfZGF0YTsKLQlpZiAoaWVlZTgwMjExX2hhc19w
cm90ZWN0ZWQoaGRyLT5mcmFtZV9jb250cm9sKSkKLQkJdHhfcHJpdi0+aHdfa2V5ID0gaHdfa2V5
OworCXR4X3ByaXYtPmh3X2tleSA9IGh3X2tleTsKIAogCS8vIEZpbGwgaGlmX21zZwogCVdBUk4o
c2tiX2hlYWRyb29tKHNrYikgPCB3bXNnX2xlbiwgIm5vdCBlbm91Z2ggc3BhY2UgaW4gc2tiIik7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2tleS5jIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9rZXkuYwppbmRleCA2MTY1ZGY1OWVjZjkuLjcyOGU1ZjhkM2I3YyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9rZXkuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2tleS5j
CkBAIC0xOTgsOCArMTk4LDggQEAgc3RhdGljIGludCB3ZnhfYWRkX2tleShzdHJ1Y3Qgd2Z4X3Zp
ZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKIAkJZWxzZQogCQkJay50eXBlID0g
ZmlsbF9zbXM0X2dyb3VwKCZrLmtleS53YXBpX2dyb3VwX2tleSwga2V5KTsKIAl9IGVsc2UgaWYg
KGtleS0+Y2lwaGVyID09IFdMQU5fQ0lQSEVSX1NVSVRFX0FFU19DTUFDKSB7Ci0JCWsudHlwZSA9
IGZpbGxfYWVzX2NtYWNfZ3JvdXAoJmsua2V5LmlndGtfZ3JvdXBfa2V5LCBrZXksCi0JCQkJCSAg
ICAgJnNlcSk7CisJCWsudHlwZSA9IGZpbGxfYWVzX2NtYWNfZ3JvdXAoJmsua2V5LmlndGtfZ3Jv
dXBfa2V5LCBrZXksICZzZXEpOworCQlrZXktPmZsYWdzIHw9IElFRUU4MDIxMV9LRVlfRkxBR19H
RU5FUkFURV9NTUlFOwogCX0gZWxzZSB7CiAJCWRldl93YXJuKHdkZXYtPmRldiwgInVuc3VwcG9y
dGVkIGtleSB0eXBlICVkXG4iLCBrZXktPmNpcGhlcik7CiAJCXdmeF9mcmVlX2tleSh3ZGV2LCBp
ZHgpOwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7CA2A6911
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 17:07:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D74B785D3D;
	Wed,  4 Nov 2020 16:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgKj8UyaQQum; Wed,  4 Nov 2020 16:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFEF485F45;
	Wed,  4 Nov 2020 16:07:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AB011BF30E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1746F8717A
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nKGWER86OL0B for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 16:07:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-eopbgr750049.outbound.protection.outlook.com [40.107.75.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F0BE587163
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 16:07:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OGdXCnKgz8twCdEdrYN8h7MpVXKXRbZBGrIFb7VbqBYtRQ0S8y4FDQhXiHkpyUNQfq9fh65wBK7tL2FFVsUAsp7j95hQTuBXmJIxZ8MILTnOQDnO32AsaQK4MeMp02KD5baFqkJ3mZX+q/2p2KMMt6yaQsBvH3C6PfBinFqstchOYovA5enG3En8oeT8Pqj5+1waPUY/YIF4AwU11q1qRPmYEiFtFv+QSD/YXo7cj0qe8zt4NVn3Dkjk2gHMhv0IYaHyGYJT3opQXgOEr+AV7itG8Ry8zYWdvQEXcDG34OjIqq6KqwCGk2wGujvQvQz/EqD98L22+Q9MztE5LkqUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yVDm7W0akEUjkcRCCEJ1oAdvjNfySJu4A7QXWZ6KM9c=;
 b=LHDVJuT9HLTvs3xveQkZXbW/CGZR9ioH9ghMAld4rDtQIiMAJY+PfsVvvHcO+A1sxI6793afVmLTlE8LUQZEiGmbE2ozasQDhBFPapwpbbKE3wg/AqoWyOtLgSrHvgu0Elng5NT7cghvJ7MsqHaUvGR2dc+M8Fzthna4e8eyIix2aDGl6zDcV/vIQiSzH2YP75xUEQZ4eU5/Oc17W+0nFg/KBbr9WVXPg9G/fzua91Y0ak9lx9v3XxJsRa+lALzitRsdpX+lZGWVbhOLKpRorRMzLZ7HqMsBZE5BFjJqF9wRz/2wP9p1MLYIubYVRHYAv1uoWWV4VYcEc6Saarou7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yVDm7W0akEUjkcRCCEJ1oAdvjNfySJu4A7QXWZ6KM9c=;
 b=QzlS57fj1TPePuA0tghB61T6y7mKNYCBCzN2Wzn6YUPyvWpMU0baSCogiGxUvtHV9Uo+hpOueASwOQBzQ3YRbL3Aqoh201vocCeC0OoLC+v2Lbo5DgSvCkWxwDSG3gEqpj8aSEoyS5m9Ud+JYA/oDbXrYAj2WTssD2IcVTCg7YQ=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.32; Wed, 4 Nov
 2020 15:53:07 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3499.032; Wed, 4 Nov 2020
 15:53:07 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v3 20/24] wfx: add scan.c/scan.h
Date: Wed,  4 Nov 2020 16:52:03 +0100
Message-Id: <20201104155207.128076-21-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: SN6PR01CA0032.prod.exchangelabs.com (2603:10b6:805:b6::45)
 To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 SN6PR01CA0032.prod.exchangelabs.com (2603:10b6:805:b6::45) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.19 via Frontend Transport; Wed, 4 Nov 2020 15:53:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2111db74-c80c-41e2-0b95-08d880d9b8d6
X-MS-TrafficTypeDiagnostic: SN6PR11MB2718:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB271828AEC84AA4E9C66A203093EF0@SN6PR11MB2718.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zxjxpE1KLE65msAzpbjvohBUmztn8ZyN3J+GZsP5NprS/995PCh5nRgZCNtEuFAoudKb5yNUDx3IylkIiDs80RPdodcRnBy/2IWkPMP7qh8czaVDqsvP8wPP2ybU2kb+Cybw/3cZh4WknCHtKljpE6CUriWrH/6c5gR2T3tORUeg2R0sfq0SCYzyOQiMZ5cptqdygaHFQGbWEWs7xXbPjKGP3p+Qh4qzWY1xrEQ0PqVZu3kztGjO5fFsULKFw4EJhdG7w4ACa3gwkLi4zdF24r24srmLRXRhBSen9KScso67jbSFNcTRQRjkhxK7dAgAgEIr0KDhST3oVYf7EZ5Iiw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(39850400004)(136003)(396003)(8936002)(478600001)(186003)(16526019)(956004)(2616005)(6486002)(8676002)(66574015)(66476007)(66556008)(66946007)(316002)(7696005)(83380400001)(26005)(54906003)(107886003)(36756003)(52116002)(7416002)(4326008)(5660300002)(86362001)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: A/SYxuJT8i/ZLfL4Cj7oor+30Cl6KQnKrAu46lfk4M1DyL9iRYiOziRoVUS2HpxHyige0+Gv1rOhMLp/6FVFGe4+3IVAzvw1n4tgOkvPaa/IX+mZ0N7MPLagWKeyyHLa8bHserb8hcANDbD0J13NoWpAmw+VpkdemhJAAg7/IP8WTkE8TNFMm7koLhuWN/q5nIUsJgzAlbZ6H1zNQNqne4BRNMgdfs/s0/qEQGDMmLLM6bkulx3WpmYI85S2IMYQ7HCvH/bgA7oRWHG4Q2+UCHyWqB5iWD7CXxgOxUPzRv9r4k5XJXL7jijL1JN0+kn5DWtC9KMGuCxtHa3JrxVUFGrqTeXzNdk8wxna0lz+81o+SvIen3nrJo/Tj+MDqFl7l1j3MhII70mWnJwQVHeTmLWlW45EkpiAQupXQj3nPLsKR0H8lTewY24i6cb346vj4AqGdX6AlDgq1bq70o5a4tZo0XP8KrXI6b96poYUZOpswUetkfuw6XUyfOcODUgzo/MISSyNIV6KOUqBxZkVmlBWPzCOvGRXpBlw4e1XN/CRhOrSxU2vv5dCgUFkUXUFak/Vl0cXGiFTQ5tUcqpW3GhHKQeAJvtw58+vYg863SbWkHYGgilCb+X+5w1ILknjZwosTtT424b6Uj8WhWAihA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2111db74-c80c-41e2-0b95-08d880d9b8d6
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 15:53:07.2477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N13SJemkdjMltNFeGXGTpTa583C3lfNcfAG2ktzYXIEzvqStxkwS4ZYjb+oTTwPQLCpjptDZxZ0OsKExT3F4fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2718
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A9C26A42A
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 13:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 963B82044C;
	Tue, 15 Sep 2020 11:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hW15cnVj2rTs; Tue, 15 Sep 2020 11:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9E172040C;
	Tue, 15 Sep 2020 11:31:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5C71BF846
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A26E866B8
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aTDcqX7LouJA for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 11:31:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5C67866B1
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 11:31:05 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9VO8k016234; Tue, 15 Sep 2020 05:32:14 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu851uxh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:14 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WDQx047060
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 05:32:13 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:32:21 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:32:21 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:32:21 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vf027664;
 Tue, 15 Sep 2020 05:32:08 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 00/10] Use ADIS devm functions for trigger/buffer setup
Date: Tue, 15 Sep 2020 11:33:35 +0200
Message-ID: <20200915093345.85614-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_05:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=672 spamscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1011 mlxscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009150087
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut
 Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean --dry-run <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhpcyBzZXJpZXMgdXBkYXRlcyBhbGwgdXNlcnMgb2YgYGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90
cmlnZ2VyKClgIHRvCnVzZSB0aGUgZGV2bSB2ZXJzaW9uIG9mIGl0LiBUaGUgdWx0aW1hdGUgZ29h
bCBvZiB0aGUgc2VyaWVzIGlzIHRvIGRyb3AKaXQgZnJvbSB0aGUgbGliIGFzIHN0YXRlZCBieSBK
b25hdGhhbiBpbiBbMV0uCgpbMV06IGh0dHBzOi8vbWFyYy5pbmZvLz9sPWxpbnV4LWlpbyZtPTE1
ODMyNjc5NjkyNDk4MCZ3PTIKCk51bm8gU8OhICgxMCk6CiAgaWlvOiBhZGlzMTYyMDE6IFVzZSBN
YW5hZ2VkIGRldmljZSBmdW5jdGlvbnMKICBpaW86IGFkaXMxNjIwOTogVXNlIE1hbmFnZWQgZGV2
aWNlIGZ1bmN0aW9ucwogIGlpbzogYWRpczE2MTM2OiBVc2UgTWFuYWdlZCBkZXZpY2UgZnVuY3Rp
b25zCiAgaWlvOiBhZGlzMTYyNjA6IFVzZSBNYW5hZ2VkIGRldmljZSBmdW5jdGlvbnMKICBpaW86
IGFkaXMxNjQwMDogVXNlIE1hbmFnZWQgZGV2aWNlIGZ1bmN0aW9ucwogIGlpbzogYWRpczE2NDYw
OiBVc2UgTWFuYWdlZCBkZXZpY2UgZnVuY3Rpb25zCiAgaWlvOiBhZGlzMTY0ODA6IFVzZSBNYW5h
Z2VkIGRldmljZSBmdW5jdGlvbnMKICBzdGFnaW5nOiBpaW86IGFkaXMxNjIwMzogVXNlIE1hbmFn
ZWQgZGV2aWNlIGZ1bmN0aW9ucwogIHN0YWdpbmc6IGlpbzogYWRpczE2MjQwOiBVc2UgTWFuYWdl
ZCBkZXZpY2UgZnVuY3Rpb25zCiAgaWlvOiBhZGlzOiBEcm9wIG5vbiBNYW5hZ2VkIGRldmljZSBm
dW5jdGlvbnMKCiBkcml2ZXJzL2lpby9hY2NlbC9hZGlzMTYyMDEuYyAgICAgICAgIHwgMTYgKyst
LS0tLQogZHJpdmVycy9paW8vYWNjZWwvYWRpczE2MjA5LmMgICAgICAgICB8IDE1ICsrLS0tLS0K
IGRyaXZlcnMvaWlvL2d5cm8vYWRpczE2MTM2LmMgICAgICAgICAgfCAgOSArLS0tCiBkcml2ZXJz
L2lpby9neXJvL2FkaXMxNjI2MC5jICAgICAgICAgIHwgMTUgKystLS0tLQogZHJpdmVycy9paW8v
aW11L2FkaXMxNjQwMC5jICAgICAgICAgICB8IDE1ICsrLS0tLS0KIGRyaXZlcnMvaWlvL2ltdS9h
ZGlzMTY0NjAuYyAgICAgICAgICAgfCAxMyArKy0tLS0KIGRyaXZlcnMvaWlvL2ltdS9hZGlzMTY0
ODAuYyAgICAgICAgICAgfCAgNyArLS0KIGRyaXZlcnMvaWlvL2ltdS9hZGlzX2J1ZmZlci5jICAg
ICAgICAgfCA2NCArKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvaWlvL2ltdS9h
ZGlzX3RyaWdnZXIuYyAgICAgICAgfCA2MCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2
ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjIwMy5jIHwgMTYgKystLS0tLQogZHJpdmVycy9z
dGFnaW5nL2lpby9hY2NlbC9hZGlzMTYyNDAuYyB8IDE0ICsrLS0tLQogaW5jbHVkZS9saW51eC9p
aW8vaW11L2FkaXMuaCAgICAgICAgICB8IDI3IC0tLS0tLS0tLS0tCiAxMiBmaWxlcyBjaGFuZ2Vk
LCAzMCBpbnNlcnRpb25zKCspLCAyNDEgZGVsZXRpb25zKC0pCgotLSAKMi4yOC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

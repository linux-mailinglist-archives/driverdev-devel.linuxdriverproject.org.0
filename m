Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835BC26A48B
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:01:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 321298718C;
	Tue, 15 Sep 2020 12:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id msCpAnM648yA; Tue, 15 Sep 2020 12:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2CCC86FC4;
	Tue, 15 Sep 2020 12:01:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20E501BF3BD
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 12CDF86690
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IfSyRGBiegKX for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:01:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB05386180
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:01:28 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08FBtDEX002322; Tue, 15 Sep 2020 08:01:28 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8s3s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 08:01:28 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 08FC1Qls007706
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Tue, 15 Sep 2020 08:01:27 -0400
Received: from SCSQCASHYB6.ad.analog.com (10.77.17.132) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:35 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB6.ad.analog.com (10.77.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:01:14 -0700
Received: from zeus.spd.analog.com (10.66.68.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:01:34 -0700
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08FC1K9r004525;
 Tue, 15 Sep 2020 08:01:21 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 00/10] Use ADIS devm functions for trigger/buffer setup 
Date: Tue, 15 Sep 2020 14:02:48 +0200
Message-ID: <20200915120258.161587-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_08:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 impostorscore=0 phishscore=0
 mlxlogscore=687 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2009150103
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
 Knaack <knaack.h@gmx.de>, Alexandru Ardelean <alexandru.ardelean@analog.com>,
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
dW5jdGlvbnMKCiBkcml2ZXJzL2lpby9hY2NlbC9hZGlzMTYyMDEuYyAgICAgICAgIHwgMjYgKyst
LS0tLS0tLS0KIGRyaXZlcnMvaWlvL2FjY2VsL2FkaXMxNjIwOS5jICAgICAgICAgfCAyNSArKy0t
LS0tLS0tLQogZHJpdmVycy9paW8vZ3lyby9hZGlzMTYxMzYuYyAgICAgICAgICB8IDM3ICsrKysr
Ky0tLS0tLS0tLS0KIGRyaXZlcnMvaWlvL2d5cm8vYWRpczE2MjYwLmMgICAgICAgICAgfCAzMyAr
KysrKy0tLS0tLS0tLQogZHJpdmVycy9paW8vaW11L2FkaXMxNjQwMC5jICAgICAgICAgICB8IDM4
ICsrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvaWlvL2ltdS9hZGlzMTY0NjAuYyAgICAgICAgICAg
fCAyNSArKy0tLS0tLS0tLQogZHJpdmVycy9paW8vaW11L2FkaXMxNjQ4MC5jICAgICAgICAgICB8
IDU1ICsrKysrKysrKysrLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2lpby9pbXUvYWRpc19idWZmZXIu
YyAgICAgICAgIHwgNjQgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2lpby9p
bXUvYWRpc190cmlnZ2VyLmMgICAgICAgIHwgNjAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQog
ZHJpdmVycy9zdGFnaW5nL2lpby9hY2NlbC9hZGlzMTYyMDMuYyB8IDI2ICsrLS0tLS0tLS0tCiBk
cml2ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjI0MC5jIHwgMjUgKystLS0tLS0tLS0KIGlu
Y2x1ZGUvbGludXgvaWlvL2ltdS9hZGlzLmggICAgICAgICAgfCAyNyAtLS0tLS0tLS0tLQogMTIg
ZmlsZXMgY2hhbmdlZCwgODQgaW5zZXJ0aW9ucygrKSwgMzU3IGRlbGV0aW9ucygtKQoKLS0gCjIu
MjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==

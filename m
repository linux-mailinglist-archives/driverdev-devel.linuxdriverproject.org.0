Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E4B26A471
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 13:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9BB1F866BD;
	Tue, 15 Sep 2020 11:53:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gwvku8IwCppF; Tue, 15 Sep 2020 11:53:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BA3F86690;
	Tue, 15 Sep 2020 11:53:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10C041BF846
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:53:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 073E886FCF
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 11:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2chpg-irs8ZZ for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 11:53:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 32B4E86FBB
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 11:53:24 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9VO8m016234; Tue, 15 Sep 2020 05:32:26 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33gu851uy1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:26 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WPrX017730
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 05:32:25 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:32:33 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 15 Sep 2020 05:32:33 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:32:33 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vm027664;
 Tue, 15 Sep 2020 05:32:21 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 07/10] iio: adis16480: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:42 +0200
Message-ID: <20200915093345.85614-8-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915093345.85614-1-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_05:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=888 spamscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 mlxscore=0 phishscore=0
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

VXNlIHRoZSBhZGlzIG1hbmFnZWQgZGV2aWNlIGZ1bmN0aW9ucyB0byBzZXR1cCB0aGUgYnVmZmVy
IGFuZCB0aGUgdHJpZ2dlci4KVGhlIHVsdGltYXRlIGdvYWwgd2lsbCBiZSB0byBjb21wbGV0ZWx5
IGRyb3AgdGhlIG5vbiBkZXZtIHZlcnNpb24gZnJvbQp0aGUgbGliLgoKU2lnbmVkLW9mZi1ieTog
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9pbXUvYWRpczE2
NDgwLmMgfCA3ICsrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaW11L2FkaXMxNjQ4MC5jIGIvZHJp
dmVycy9paW8vaW11L2FkaXMxNjQ4MC5jCmluZGV4IDFlYjRmOTgwNzZmMS4uYjZhMTI5YTcwZDRi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9pbXUvYWRpczE2NDgwLmMKKysrIGIvZHJpdmVycy9p
aW8vaW11L2FkaXMxNjQ4MC5jCkBAIC0xMjY0LDIwICsxMjY0LDE4IEBAIHN0YXRpYyBpbnQgYWRp
czE2NDgwX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJCXN0LT5jbGtfZnJlcSA9IHN0
LT5jaGlwX2luZm8tPmludF9jbGs7CiAJfQogCi0JcmV0ID0gYWRpc19zZXR1cF9idWZmZXJfYW5k
X3RyaWdnZXIoJnN0LT5hZGlzLCBpbmRpb19kZXYsIE5VTEwpOworCXJldCA9IGRldm1fYWRpc19z
ZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlzLCBpbmRpb19kZXYsIE5VTEwpOwogCWlm
IChyZXQpCiAJCWdvdG8gZXJyb3JfY2xrX2Rpc2FibGVfdW5wcmVwYXJlOwogCiAJcmV0ID0gaWlv
X2RldmljZV9yZWdpc3RlcihpbmRpb19kZXYpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyb3JfY2xl
YW51cF9idWZmZXI7CisJCWdvdG8gZXJyb3JfY2xrX2Rpc2FibGVfdW5wcmVwYXJlOwogCiAJYWRp
czE2NDgwX2RlYnVnZnNfaW5pdChpbmRpb19kZXYpOwogCiAJcmV0dXJuIDA7CiAKLWVycm9yX2Ns
ZWFudXBfYnVmZmVyOgotCWFkaXNfY2xlYW51cF9idWZmZXJfYW5kX3RyaWdnZXIoJnN0LT5hZGlz
LCBpbmRpb19kZXYpOwogZXJyb3JfY2xrX2Rpc2FibGVfdW5wcmVwYXJlOgogCWNsa19kaXNhYmxl
X3VucHJlcGFyZShzdC0+ZXh0X2Nsayk7CiBlcnJvcl9zdG9wX2RldmljZToKQEAgLTEyOTMsNyAr
MTI5MSw2IEBAIHN0YXRpYyBpbnQgYWRpczE2NDgwX3JlbW92ZShzdHJ1Y3Qgc3BpX2RldmljZSAq
c3BpKQogCWlpb19kZXZpY2VfdW5yZWdpc3RlcihpbmRpb19kZXYpOwogCWFkaXMxNjQ4MF9zdG9w
X2RldmljZShpbmRpb19kZXYpOwogCi0JYWRpc19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcigm
c3QtPmFkaXMsIGluZGlvX2Rldik7CiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHN0LT5leHRfY2xr
KTsKIAogCXJldHVybiAwOwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

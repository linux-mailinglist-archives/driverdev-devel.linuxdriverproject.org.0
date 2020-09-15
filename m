Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7800E26A576
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 14:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 357D52040D;
	Tue, 15 Sep 2020 12:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrgO-31INo+F; Tue, 15 Sep 2020 12:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A4E0620484;
	Tue, 15 Sep 2020 12:45:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFD9B1BF842
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D95D28711F
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 12:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqzJ1OUVfyBf for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 12:45:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E676A870F2
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 12:45:41 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08F9FD3v025125; Tue, 15 Sep 2020 05:32:31 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 33h7pr8dav-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Sep 2020 05:32:31 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 08F9WU62017745
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Tue, 15 Sep 2020 05:32:30 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 15 Sep
 2020 05:32:38 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Tue, 15 Sep 2020 05:32:38 -0400
Received: from nsa.sphairon.box ([10.44.3.98])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 08F9W7vo027664;
 Tue, 15 Sep 2020 05:32:25 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 09/10] staging: iio: adis16240: Use Managed device functions
Date: Tue, 15 Sep 2020 11:33:44 +0200
Message-ID: <20200915093345.85614-10-nuno.sa@analog.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915093345.85614-1-nuno.sa@analog.com>
References: <20200915093345.85614-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-15_05:2020-09-15,
 2020-09-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 impostorscore=0 phishscore=0
 mlxlogscore=999 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2009150086
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean --dry-run <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VXNlIHRoZSBhZGlzIG1hbmFnZWQgZGV2aWNlIGZ1bmN0aW9ucyB0byBzZXR1cCB0aGUgYnVmZmVy
IGFuZCB0aGUgdHJpZ2dlci4KVGhlIHVsdGltYXRlIGdvYWwgd2lsbCBiZSB0byBjb21wbGV0ZWx5
IGRyb3AgdGhlIG5vbiBkZXZtIHZlcnNpb24gZnJvbQp0aGUgbGliLgoKU2lnbmVkLW9mZi1ieTog
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvaWlvL2Fj
Y2VsL2FkaXMxNjI0MC5jIHwgMTQgKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy9paW8vYWNjZWwvYWRpczE2MjQwLmMgYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMx
NjI0MC5jCmluZGV4IDM4ZWM0MGI0NThjOS4uMjZiNTdmMGEzOTE3IDEwMDY0NAotLS0gYS9kcml2
ZXJzL3N0YWdpbmcvaWlvL2FjY2VsL2FkaXMxNjI0MC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9p
aW8vYWNjZWwvYWRpczE2MjQwLmMKQEAgLTQxNSwzMSArNDE1LDIzIEBAIHN0YXRpYyBpbnQgYWRp
czE2MjQwX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAJcmV0ID0gYWRpc19pbml0KHN0
LCBpbmRpb19kZXYsIHNwaSwgJmFkaXMxNjI0MF9kYXRhKTsKIAlpZiAocmV0KQogCQlyZXR1cm4g
cmV0OwotCXJldCA9IGFkaXNfc2V0dXBfYnVmZmVyX2FuZF90cmlnZ2VyKHN0LCBpbmRpb19kZXYs
IE5VTEwpOworCXJldCA9IGRldm1fYWRpc19zZXR1cF9idWZmZXJfYW5kX3RyaWdnZXIoc3QsIGlu
ZGlvX2RldiwgTlVMTCk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAogCS8qIEdldCB0aGUg
ZGV2aWNlIGludG8gYSBzYW5lIGluaXRpYWwgc3RhdGUgKi8KIAlyZXQgPSBhZGlzX2luaXRpYWxf
c3RhcnR1cChzdCk7CiAJaWYgKHJldCkKLQkJZ290byBlcnJvcl9jbGVhbnVwX2J1ZmZlcl90cmln
Z2VyOwotCXJldCA9IGlpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9fZGV2KTsKLQlpZiAocmV0KQot
CQlnb3RvIGVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI7Ci0JcmV0dXJuIDA7CisJCXJldHVy
biByZXQ7CiAKLWVycm9yX2NsZWFudXBfYnVmZmVyX3RyaWdnZXI6Ci0JYWRpc19jbGVhbnVwX2J1
ZmZlcl9hbmRfdHJpZ2dlcihzdCwgaW5kaW9fZGV2KTsKLQlyZXR1cm4gcmV0OworCXJldHVybiBp
aW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7CiB9CiAKIHN0YXRpYyBpbnQgYWRpczE2MjQw
X3JlbW92ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogewogCXN0cnVjdCBpaW9fZGV2ICppbmRp
b19kZXYgPSBzcGlfZ2V0X2RydmRhdGEoc3BpKTsKLQlzdHJ1Y3QgYWRpcyAqc3QgPSBpaW9fcHJp
dihpbmRpb19kZXYpOwogCiAJaWlvX2RldmljZV91bnJlZ2lzdGVyKGluZGlvX2Rldik7Ci0JYWRp
c19jbGVhbnVwX2J1ZmZlcl9hbmRfdHJpZ2dlcihzdCwgaW5kaW9fZGV2KTsKIAogCXJldHVybiAw
OwogfQotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK

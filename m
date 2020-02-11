Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACB2158F2F
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 13:52:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EBED204E0;
	Tue, 11 Feb 2020 12:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WGtUE9pj7hTn; Tue, 11 Feb 2020 12:52:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BF169203F7;
	Tue, 11 Feb 2020 12:52:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E1E81BF3A4
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 12:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5593C873CE
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 12:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hfvun0inWoYf for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 12:52:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2DE0F86DAD
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 12:52:44 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01BCmLIA066454;
 Tue, 11 Feb 2020 12:52:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=rE7Zehtx2dawIbSxjiRh/i2QUfiJy6O8qQf5qYOAZKU=;
 b=FzbKWW3j0hNkAg1OSDTaHVwrNKFE+bbUBegzGjank3BuIdYHX+ImNvTZ8Aoy0M6lkQuG
 RQ6sBOx77XAMYxJNc25nbcoWrPYbLMNzW2GxpJre+aWfmTdGe9WOACGri+ood0PoaUd4
 EUfF/dzrhkFK5VcZ6nQqipwP73J9yLLnJj7H/mYeOJ5KIbZZ0l4OnmoJU7vXTeQuezk2
 DSOSiXptbgj8Q+cb/wKgXjv28ZfNycXTmyBv60u5j3KUn9DiBDWVQLMW9fTN5AYiRs+B
 0M8bmuN72aHKHqqJj9npVFX5jQTIJpdhCMclPb6haEYE6jU/dBRCNS8FS2pHsvH/SJgj gw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2y2k8833h6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Feb 2020 12:52:43 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01BCkbwf002502;
 Tue, 11 Feb 2020 12:52:42 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2y26q17y7t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Feb 2020 12:52:42 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01BCqeQO032556;
 Tue, 11 Feb 2020 12:52:40 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Feb 2020 04:52:40 -0800
Date: Tue, 11 Feb 2020 15:52:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [[PATCH staging] 3/7] staging: wfx: fix init/remove vs IRQ race
Message-ID: <20200211125232.GF1778@kadam>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
 <8f0c51acc3b98fc55d6960036daef7556445cd0a.1581410026.git.mirq-linux@rere.qmqm.pl>
 <20200211092354.GE1778@kadam> <20200211103931.GA26303@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211103931.GA26303@qmqm.qmqm.pl>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 mlxscore=0 adultscore=0 suspectscore=8 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110098
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 suspectscore=8 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002110098
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMTE6Mzk6MzFBTSArMDEwMCwgTWljaGHFgiBNaXJvc8WC
YXcgd3JvdGU6Cj4gT24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMTI6MjM6NTRQTSArMDMwMCwgRGFu
IENhcnBlbnRlciB3cm90ZToKPiA+IE9uIFR1ZSwgRmViIDExLCAyMDIwIGF0IDA5OjQ2OjU0QU0g
KzAxMDAsIE1pY2hhxYIgTWlyb3PFgmF3IHdyb3RlOgo+ID4gPiBAQCAtMjM0LDggKzIzNCw4IEBA
IHN0YXRpYyB2b2lkIHdmeF9zZGlvX3JlbW92ZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jKQo+ID4g
PiAgCXN0cnVjdCB3Znhfc2Rpb19wcml2ICpidXMgPSBzZGlvX2dldF9kcnZkYXRhKGZ1bmMpOwo+
ID4gPiAgCj4gPiA+ICAJd2Z4X3JlbGVhc2UoYnVzLT5jb3JlKTsKPiA+ID4gLQl3ZnhfZnJlZV9j
b21tb24oYnVzLT5jb3JlKTsKPiA+ID4gIAl3Znhfc2Rpb19pcnFfdW5zdWJzY3JpYmUoYnVzKTsK
PiA+ICAgICAgICAgXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl4KPiA+IAo+ID4gVGhpcyBj
YWxscyBzZGlvX3JlbGVhc2VfaG9zdChmdW5jKTsKPiA+IAo+ID4gPiArCXdmeF9mcmVlX2NvbW1v
bihidXMtPmNvcmUpOwo+ID4gPiAgCXNkaW9fY2xhaW1faG9zdChmdW5jKTsKPiA+ID4gIAlzZGlv
X2Rpc2FibGVfZnVuYyhmdW5jKTsKPiA+ID4gIAlzZGlvX3JlbGVhc2VfaG9zdChmdW5jKTsKPiA+
ICAgICAgICAgXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCj4gPiBzbyBpcyB0aGlzIGEgZG91Ymxl
IGZyZWU/Cj4gCj4gVGhpcyBpcyBwYWlyZWQgd2l0aCBzZGlvX2NsYWltX2hvc3QoKSBqdXN0IGFi
b3ZlLgoKQWguLi4gIEkgbWlzcmVhZCB3Znhfc2Rpb19pcnFfdW5zdWJzY3JpYmUoKSwgc29ycnku
CgpyZWdhcmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

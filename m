Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 772C525C0BA
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 14:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B961286BC6;
	Thu,  3 Sep 2020 12:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-YN9Q+P3zOD; Thu,  3 Sep 2020 12:05:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3179C86BAD;
	Thu,  3 Sep 2020 12:05:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAC3B1BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 12:05:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AC44C2E0FE
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 12:05:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2LMAXywSxZc7 for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 12:05:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id E769B20400
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 12:05:00 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 083C4wCw114539;
 Thu, 3 Sep 2020 12:04:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=kUOK0z/dR2RLJNvbuKgmrFMRH/00rLzLvd4jJintzwk=;
 b=FXzaei6CCp23GboSeEUdmoo0Se9rKd16Gn9wbORMWtf0Kj+dlZF0fhZyGqzFR3bZZG3Z
 C62awQTOzvOHIwpLVJD+E2icDrpnBbGbvm9/OdzUBhTbNcjzgNEXJH//ra3C05hHJa2p
 1SXRYxtt0cXy/qBskIotbQP+swqxWnz2mwq7IFtZXKqnoKb7RPFHv1h/F0E90ZiRQ3Vu
 HHxoCLkZ0v9CBNxH0u48DqrW3M85hWg00hhYyvNy2crLOYs8ofQYwQH6V/WOyz89hslJ
 Q6Kj3L1czue2FWzqZf3pYuhRaINk82GXgETMQwcHalK3jkqTmapwiJqUNSbhEhPdVtFg 3w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 337eer8ayu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 03 Sep 2020 12:04:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 083C4g1I077397;
 Thu, 3 Sep 2020 12:04:55 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 3380x9s81u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Sep 2020 12:04:55 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 083C4qFx005866;
 Thu, 3 Sep 2020 12:04:53 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Sep 2020 05:04:51 -0700
Date: Thu, 3 Sep 2020 15:04:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] staging: media: atomisp: fix memory leak of object
 flash
Message-ID: <20200903120444.GA8299@kadam>
References: <20200902165852.201155-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902165852.201155-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9732
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 phishscore=0
 mlxlogscore=999 adultscore=0 suspectscore=2 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009030114
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9732
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 adultscore=0 spamscore=0 mlxscore=0
 phishscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009030113
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
 Linus Walleij <linus.walleij@linaro.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBTZXAgMDIsIDIwMjAgYXQgMDU6NTg6NTJQTSArMDEwMCwgQ29saW4gS2luZyB3cm90
ZToKPiBGcm9tOiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgo+IAo+
IEluIHRoZSBjYXNlIHdoZXJlIHRoZSBjYWxsIHRvIGxtMzU1NF9wbGF0Zm9ybV9kYXRhX2Z1bmMg
cmV0dXJucyBhbgo+IGVycm9yIHRoZXJlIGlzIGEgbWVtb3J5IGxlYWsgb24gdGhlIGVycm9yIHJl
dHVybiBwYXRoIG9mIG9iamVjdAo+IGZsYXNoLiAgRml4IHRoaXMgYnkgYWRkaW5nIGFuIGVycm9y
IHJldHVybiBwYXRoIHRoYXQgd2lsbCBmcmVlCj4gZmxhc2ggYW5kIHJlbmFtZSBsYWJlbHMgZmFp
bDIgdG8gZmFpbDMgYW5kIGZhaWwxIHRvIGZhaWwyLgoKQ29saW4sIEkga25vdyB5b3Uga25vdyB0
aGlzIGFuZCBJIGRvbid0IHdhbnQgdG8gZXhwbGFpbiB0aGluZ3Mgd2hpY2ggeW91CmFscmVhZHkg
a25vdyBidXQgdGhpcyBmb3IgdGhlIG90aGVyIHBlb3BsZSBpbiBLZXJuZWwgSmFuaXRvcnMuCgpU
aGUgZXJyb3IgaGFuZGxpbmcgaW4gdGhpcyBmdW5jdGlvbiBpcyBzdGlsbCBwcmV0dHkgbWVzc2Vk
IHVwLiAgV2h5CmRvZXMgaXQgImdvdG8gZmFpbDIiIGlmIG1lZGlhX2VudGl0eV9wYWRzX2luaXQo
KSBmYWlscz8gIFRoZXJlIGlzIG5vCmNsZWFuIHVwIGlmIGF0b21pc3BfcmVnaXN0ZXJfaTJjX21v
ZHVsZSgpIGZhaWxzLgoKSXQncyBqdXN0IGJldHRlciB0byByZS13cml0ZSBpdCB1c2luZyB0aGUg
ImZyZWUgdGhlIG1vc3QgcmVjZW50CmFsbG9jYXRpb24iIHN5c3RlbS4gIFRoZSBrZXkgdG8gdGhl
IHN5c3RlbSBpcyBpZiB0aGUgbGFzdCBhbGxvY2F0aW9uCndhcyAiZmxhc2giIHRoZW4gdGhlIGdv
dG8gc2hvdWxkIGJlIHNvbWV0aGluZyBsaWtlICJnb3RvIGZyZWVfZmxhc2g7IgpzbyB0aGF0IHdl
IGtub3cgaXQgZG9lcyB0aGUgcmlnaHQgdGhpbmcuCgpPbmUgb2YgdGhlIGFkdmFudGFnZXMgb2Yg
dGhlIHRoaXMgc3lzdGVtIGlzIHRoYXQgaXQgYmFzaWNhbGx5IHdyaXRlcyB0aGUKLT5yZW1vdmUo
KSBmb3IgeW91LiAgQWxsIHdlIGhhdmUgdG8gZG8gaXMgYWRkIG9uZSBtb3JlIGxpbmUgdG8gZnJl
ZSB0aGUKZmluYWwgYWxsb2NhdGlvbiBmcm9tIHRoZSBwcm9iZSBmdW5jdGlvbi4gIEluIHRoaXMg
ZHJpdmVyIHRoZSBsbTM1NTRfcmVtb3ZlKCkKaGFzIGEgZmV3IHRoaW5ncyB3aGljaCBhcmVuJ3Qg
Y2xlYW5lZCB1cCBpbiB0aGUgcHJvYmUgZXJyb3IgaGFuZGxpbmcgc28KaXQgZG9lc24ndCBzZWVt
IHJpZ2h0LiAgRm9yIGV4YW1wbGUsIHdlIG5lZWQgdG8gZGVsZXRlIHRoZSB0aW1lci4KCiAgIDgz
NCAgc3RhdGljIGludCBsbTM1NTRfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKICAg
ODM1ICB7CiAgIDgzNiAgICAgICAgICBpbnQgZXJyID0gMDsKICAgODM3ICAgICAgICAgIHN0cnVj
dCBsbTM1NTQgKmZsYXNoOwogICA4MzggICAgICAgICAgdW5zaWduZWQgaW50IGk7CiAgIDgzOSAg
ICAgICAgICBpbnQgcmV0OwoKV2UgaGF2ZSBib3RoICJyZXQiIGFuZCAiZXJyIi4gIEl0IGNhdXNl
cyBidWdzIHdoZXJlIGV2ZXIgInJldCIgaXMgdXNlZApiZWxvdy4gIExldCdzIGRlbGV0ZSAiZXJy
Ii4KCiAgIDg0MCAgCiAgIDg0MSAgICAgICAgICBmbGFzaCA9IGt6YWxsb2Moc2l6ZW9mKCpmbGFz
aCksIEdGUF9LRVJORUwpOwogICA4NDIgICAgICAgICAgaWYgKCFmbGFzaCkKICAgODQzICAgICAg
ICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07CgoiZmxhc2giIGlzIGFsbG9jYXRlZC4KCiAgIDg0
NCAgCiAgIDg0NSAgICAgICAgICBmbGFzaC0+cGRhdGEgPSBsbTM1NTRfcGxhdGZvcm1fZGF0YV9m
dW5jKGNsaWVudCk7CiAgIDg0NiAgICAgICAgICBpZiAoSVNfRVJSKGZsYXNoLT5wZGF0YSkpCiAg
IDg0NyAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGZsYXNoLT5wZGF0YSk7CgoJaWYg
KElTX0VSUihmbGFzaC0+cGRhdGEpKSB7CgkJcmV0ID0gUFRSX0VSUihmbGFzaC0+cGRhdGEpOwoJ
CWdvdG8gZnJlZV9mbGFzaDsKCX0KClRoZSBsbTM1NTRfcGxhdGZvcm1fZGF0YV9mdW5jKCkgZnVu
Y3Rpb24gZG9lc24ndCBhbGxvY2F0ZSBhbnl0aGluZyBzbwoiZmxhc2giIGlzIHN0aWxsIHRoZSBt
b3N0IHJlY2VudCBhbGxvY2F0aW9uLgoKICAgODQ4ICAKICAgODQ5ICAgICAgICAgIHY0bDJfaTJj
X3N1YmRldl9pbml0KCZmbGFzaC0+c2QsIGNsaWVudCwgJmxtMzU1NF9vcHMpOwogICAgICAgICAg
ICAgICAgXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl4KSSB0aGluayB0aGlzIG5lZWRzIHRvIGJlIHVud291bmQgd2l0aCB0aGUgdjRsMl9kZXZpY2Vf
dW5yZWdpc3Rlcl9zdWJkZXYoKQpmdW5jdGlvbi4gIEknbSBub3QgdG90YWxseSBzdXJlLiAgQnV0
IHRoYXQncyBob3cgdGhlIGV4aXN0aW5nIGNvZGUgd29ya3MKc28gbGV0J3Mga2VlcCBpdCBhcy1p
cy4gIE1lYW5pbmcgdGhhdCAic3ViZGV2IiBpcyB0aGUgbW9zdCByZWNlbnQKYWxsb2NhdGlvbi4K
CiAgIDg1MCAgICAgICAgICBmbGFzaC0+c2QuaW50ZXJuYWxfb3BzID0gJmxtMzU1NF9pbnRlcm5h
bF9vcHM7CiAgIDg1MSAgICAgICAgICBmbGFzaC0+c2QuZmxhZ3MgfD0gVjRMMl9TVUJERVZfRkxf
SEFTX0RFVk5PREU7CiAgIDg1MiAgICAgICAgICBmbGFzaC0+bW9kZSA9IEFUT01JU1BfRkxBU0hf
TU9ERV9PRkY7CiAgIDg1MyAgICAgICAgICBmbGFzaC0+dGltZW91dCA9IExNMzU1NF9NQVhfVElN
RU9VVCAvIExNMzU1NF9USU1FT1VUX1NURVBTSVpFIC0gMTsKICAgODU0ICAgICAgICAgIHJldCA9
CiAgIDg1NSAgICAgICAgICAgICAgdjRsMl9jdHJsX2hhbmRsZXJfaW5pdCgmZmxhc2gtPmN0cmxf
aGFuZGxlciwKICAgODU2ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFSUkFZ
X1NJWkUobG0zNTU0X2NvbnRyb2xzKSk7CiAgIDg1NyAgICAgICAgICBpZiAocmV0KSB7CiAgIDg1
OCAgICAgICAgICAgICAgICAgIGRldl9lcnIoJmNsaWVudC0+ZGV2LCAiZXJyb3IgaW5pdGlhbGl6
ZSBhIGN0cmxfaGFuZGxlci5cbiIpOwogICA4NTkgICAgICAgICAgICAgICAgICBnb3RvIGZhaWwy
OwogICA4NjAgICAgICAgICAgfQoKVGhpcyBiZWNvbWVzICJnb3RvIHVucmVnaXN0ZXJfc3ViZGV2
OyIuICBJbiB0aGUgb3JpZ2luYWwgY29kZSB0aGUgZ290bwpmYWlsMiBmcmVlZCB0aGUgaGFuZGxl
ciwgd2hpY2ggaXMgaGFybWxlc3MgYnV0IHVubmVjZXNzYXJ5LgoiZmxhc2gtPmN0cmxfaGFuZGxl
ciIgaXMgbm93IHRoZSBtb3N0IHJlY2VudCBhbGxvY2F0ZWQuCgogICA4NjEgIAogICA4NjIgICAg
ICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUobG0zNTU0X2NvbnRyb2xzKTsgaSsrKQog
ICA4NjMgICAgICAgICAgICAgICAgICB2NGwyX2N0cmxfbmV3X2N1c3RvbSgmZmxhc2gtPmN0cmxf
aGFuZGxlciwgJmxtMzU1NF9jb250cm9sc1tpXSwKICAgODY0ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgTlVMTCk7CiAgIDg2NSAgCiAgIDg2NiAgICAgICAgICBpZiAoZmxh
c2gtPmN0cmxfaGFuZGxlci5lcnJvcikgewogICA4NjcgICAgICAgICAgICAgICAgICBkZXZfZXJy
KCZjbGllbnQtPmRldiwgImN0cmxfaGFuZGxlciBlcnJvci5cbiIpOwogICA4NjggICAgICAgICAg
ICAgICAgICBnb3RvIGZhaWwyOwoKTWlzc2luZyBlcnJvciBjb2RlLgoKCWlmIChmbGFzaC0+Y3Ry
bF9oYW5kbGVyLmVycm9yKSB7CgkJZGV2X2VycigmY2xpZW50LT5kZXYsICJjdHJsX2hhbmRsZXIg
ZXJyb3IuXG4iKTsKCQlyZXQgPSBmbGFzaC0+Y3RybF9oYW5kbGVyLmVycm9yOwoJCWdvdG8gZnJl
ZV9oYW5kbGVyOwoJfQoKSSBkb24ndCB0aGluayB0aGUgdjRsMl9jdHJsX25ld19jdXN0b20oKSBu
ZWVkcyB0byBiZSB1bndvdW5kIHNvCiJmbGFzaC0+Y3RybF9oYW5kbGVyIiBpcyBzdGlsbCB0aGUg
bW9zdCByZWNlbnQgYWxsb2NhdGlvbi4KCiAgIDg2OSAgICAgICAgICB9CiAgIDg3MCAgCiAgIDg3
MSAgICAgICAgICBmbGFzaC0+c2QuY3RybF9oYW5kbGVyID0gJmZsYXNoLT5jdHJsX2hhbmRsZXI7
CiAgIDg3MiAgICAgICAgICBlcnIgPSBtZWRpYV9lbnRpdHlfcGFkc19pbml0KCZmbGFzaC0+c2Qu
ZW50aXR5LCAwLCBOVUxMKTsKICAgODczICAgICAgICAgIGlmIChlcnIpIHsKICAgODc0ICAgICAg
ICAgICAgICAgICAgZGV2X2VycigmY2xpZW50LT5kZXYsICJlcnJvciBpbml0aWFsaXplIGEgbWVk
aWEgZW50aXR5LlxuIik7CiAgIDg3NSAgICAgICAgICAgICAgICAgIGdvdG8gZmFpbDE7CiAgIDg3
NiAgICAgICAgICB9CgpUaGlzIGdvdG8gbGVha3MgaGFuZGxlci4gIEkgc3VzcGVjdCB0aGUgcmVh
c29uIGlzIHRoYXQgdGhlIG9yaWdpbmFsCmNvZGVyIGRpZG4ndCB3YW50IHRvIGNhbGwgbWVkaWFf
ZW50aXR5X2NsZWFudXAoKSBpZiBtZWRpYV9lbnRpdHlfcGFkc19pbml0KCkKZmFpbGVkLiAgVGhl
IG1lZGlhX2VudGl0eV9jbGVhbnVwKCkgZnVuY3Rpb24gZG9lc24ndCBkbyBhbnl0aGluZy4gIFdl
CmFkZGVkIGl0IGFzIHN0dWIgZnVuY3Rpb24gaW4gMjAwOSBidXQgaGF2ZSB3YXMgbmV2ZXIgdXNl
ZCBpdC4gIFRoZQpjb21tZW50cyBzYXkgIkl0IG11c3QgYmUgY2FsbGVkIGR1cmluZyB0aGUgY2xl
YW51cCBwaGFzZSBhZnRlcgp1bnJlZ2lzdGVyaW5nIHRoZSBlbnRpdHkgYW5kIGJlZm9yZSBmcmVl
aW5nIGl0LiIgIFdlIGhhdmVuJ3QKdW5yZWdpc3RlcmVkIGFueXRoaW5nIGhlcmUgYnV0IHdlIGFy
ZSBmcmVlaW5nIHNvbWV0aGluZy4gIMKvXF8o44OEKV8vwq8KCkFueXdheSBjYWxsaW5nIG1lZGlh
X2VudGl0eV9jbGVhbnVwKCkgaXMgaGFybWxlc3M6CgoJZ290byBmcmVlX2hhbmRsZXI7CgogICA4
NzcgIAogICA4NzggICAgICAgICAgZmxhc2gtPnNkLmVudGl0eS5mdW5jdGlvbiA9IE1FRElBX0VO
VF9GX0ZMQVNIOwogICA4NzkgIAogICA4ODAgICAgICAgICAgbXV0ZXhfaW5pdCgmZmxhc2gtPnBv
d2VyX2xvY2spOwogICA4ODEgIAogICA4ODIgICAgICAgICAgdGltZXJfc2V0dXAoJmZsYXNoLT5m
bGFzaF9vZmZfZGVsYXksIGxtMzU1NF9mbGFzaF9vZmZfZGVsYXksIDApOwoKVGhlIHRpbWVyIHdp
bGwgbmVlZCB0byBiZSBkZWxldGVkIGluIHRoZSBjbGVhbnVwLiAgSXQncyBub3cgdGhlIG1vc3QK
cmVjZW50IGFsbG9jYXRpb24uCgogICA4ODMgIAogICA4ODQgICAgICAgICAgZXJyID0gbG0zNTU0
X2dwaW9faW5pdChjbGllbnQpOwogICA4ODUgICAgICAgICAgaWYgKGVycikgewogICA4ODYgICAg
ICAgICAgICAgICAgICBkZXZfZXJyKCZjbGllbnQtPmRldiwgImdwaW8gcmVxdWVzdC9kaXJlY3Rp
b25fb3V0cHV0IGZhaWwiKTsKICAgODg3ICAgICAgICAgICAgICAgICAgZ290byBmYWlsMjsKCmdv
dG8gZGVsX3RpbWVyOwoKZ3Bpb19pbml0IGlzIG5vdyB0aGUgbW9zdCByZWNlbnQgYWxsb2NhdGlv
bi4KCiAgIDg4OCAgICAgICAgICB9CiAgIDg4OSAgICAgICAgICByZXR1cm4gYXRvbWlzcF9yZWdp
c3Rlcl9pMmNfbW9kdWxlKCZmbGFzaC0+c2QsIE5VTEwsIExFRF9GTEFTSCk7CgoKCXJldCA9IGF0
b21pc3BfcmVnaXN0ZXJfaTJjX21vZHVsZSgmZmxhc2gtPnNkLCBOVUxMLCBMRURfRkxBU0gpOwoJ
aWYgKHJldCkKCQlnb3RvIGdwaW9fdW5pbml0OwoKICAgODkwICBmYWlsMjoKICAgODkxICAgICAg
ICAgIG1lZGlhX2VudGl0eV9jbGVhbnVwKCZmbGFzaC0+c2QuZW50aXR5KTsKICAgODkyICAgICAg
ICAgIHY0bDJfY3RybF9oYW5kbGVyX2ZyZWUoJmZsYXNoLT5jdHJsX2hhbmRsZXIpOwogICA4OTMg
IGZhaWwxOgogICA4OTQgICAgICAgICAgdjRsMl9kZXZpY2VfdW5yZWdpc3Rlcl9zdWJkZXYoJmZs
YXNoLT5zZCk7CiAgIDg5NSAgICAgICAgICBrZnJlZShmbGFzaCk7CiAgIDg5NiAgCiAgIDg5NyAg
ICAgICAgICByZXR1cm4gZXJyOwogICA4OTggIH0KCgpOb3cgdGhlIGVycm9yIGhhbmRsaW5nIGxv
b2sgbGlrZToKCglyZXR1cm4gMDsKCmdwaW9fdW5pbml0OgoJbG0zNTU0X2dwaW9fdW5pbml0KGNs
aWVudCk7CmRlbF90aW1lcjoKCWRlbF90aW1lcl9zeW5jKCZmbGFzaC0+Zmxhc2hfb2ZmX2RlbGF5
KTsKZnJlZV9oYW5kbGVyOgoJbWVkaWFfZW50aXR5X2NsZWFudXAoJmZsYXNoLT5zZC5lbnRpdHkp
OwoJdjRsMl9jdHJsX2hhbmRsZXJfZnJlZSgmZmxhc2gtPmN0cmxfaGFuZGxlcik7CnVucmVnaXN0
ZXJfc3ViZGV2OgoJdjRsMl9kZXZpY2VfdW5yZWdpc3Rlcl9zdWJkZXYoJmZsYXNoLT5zZCk7CmZy
ZWVfZmxhc2g6CglrZnJlZShmbGFzaCk7CgoJcmV0dXJuIHJldDsKClRoZW4gdG8gZ2VuZXJhdGUg
dGhlIHJlbW92ZSBmdW5jdGlvbiB3ZSBoYXZlIHRvIGNsZWFudXAgd2Ugd291bGQKbm9ybWFsbHkg
YSBzb21ldGhpbmcgbGlrZSBhdG9taXNwX3VucmVnaXN0ZXJfaTJjX21vZHVsZSgpIGJ1dCB0aGVy
ZSBpcwpubyB3YXkgdG8gdW5yZWdpc3RlciB0aGF0LiAgU28ganVzdCB0YWtlIHRoZSBlcnJvciBo
YW5kbGluZyBjb2RlIGFuZApyZW1vdmUgdGhlIGxhYmVscy4gIERvbmUhCgpzdGF0aWMgaW50IGxt
MzU1NF9yZW1vdmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKewoJc3RydWN0IHY0bDJfc3Vi
ZGV2ICpzZCA9IGkyY19nZXRfY2xpZW50ZGF0YShjbGllbnQpOwoJc3RydWN0IGxtMzU1NCAqZmxh
c2ggPSB0b19sbTM1NTQoc2QpOwoJaW50IHJldDsKCgkvLyBGSVhNRTogdW5yZWdpc3RlciBpMmMg
bW9kdWxlCglyZXQgPSBsbTM1NTRfZ3Bpb191bmluaXQoY2xpZW50KTsKCWlmIChyZXQpCgkJZGV2
X2VycigmY2xpZW50LT5kZXYsICJncGlvIHJlcXVlc3QvZGlyZWN0aW9uX291dHB1dCBmYWlsIik7
CglkZWxfdGltZXJfc3luYygmZmxhc2gtPmZsYXNoX29mZl9kZWxheSk7CgltZWRpYV9lbnRpdHlf
Y2xlYW51cCgmZmxhc2gtPnNkLmVudGl0eSk7Cgl2NGwyX2N0cmxfaGFuZGxlcl9mcmVlKCZmbGFz
aC0+Y3RybF9oYW5kbGVyKTsKCXY0bDJfZGV2aWNlX3VucmVnaXN0ZXJfc3ViZGV2KCZmbGFzaC0+
c2QpOwoJa2ZyZWUoZmxhc2gpOwp9CgogICA4OTkgIAogICA5MDAgIHN0YXRpYyBpbnQgbG0zNTU0
X3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQogICA5MDEgIHsKICAgOTAyICAgICAg
ICAgIHN0cnVjdCB2NGwyX3N1YmRldiAqc2QgPSBpMmNfZ2V0X2NsaWVudGRhdGEoY2xpZW50KTsK
ICAgOTAzICAgICAgICAgIHN0cnVjdCBsbTM1NTQgKmZsYXNoID0gdG9fbG0zNTU0KHNkKTsKICAg
OTA0ICAgICAgICAgIGludCByZXQ7CiAgIDkwNSAgCiAgIDkwNiAgICAgICAgICBtZWRpYV9lbnRp
dHlfY2xlYW51cCgmZmxhc2gtPnNkLmVudGl0eSk7CiAgIDkwNyAgICAgICAgICB2NGwyX2N0cmxf
aGFuZGxlcl9mcmVlKCZmbGFzaC0+Y3RybF9oYW5kbGVyKTsKICAgOTA4ICAgICAgICAgIHY0bDJf
ZGV2aWNlX3VucmVnaXN0ZXJfc3ViZGV2KHNkKTsKICAgOTA5ICAKICAgOTEwICAgICAgICAgIGF0
b21pc3BfZ21pbl9yZW1vdmVfc3ViZGV2KHNkKTsKICAgOTExICAKICAgOTEyICAgICAgICAgIGRl
bF90aW1lcl9zeW5jKCZmbGFzaC0+Zmxhc2hfb2ZmX2RlbGF5KTsKICAgOTEzICAKICAgOTE0ICAg
ICAgICAgIHJldCA9IGxtMzU1NF9ncGlvX3VuaW5pdChjbGllbnQpOwogICA5MTUgICAgICAgICAg
aWYgKHJldCA8IDApCiAgIDkxNiAgICAgICAgICAgICAgICAgIGdvdG8gZmFpbDsKICAgOTE3ICAK
ICAgOTE4ICAgICAgICAgIGtmcmVlKGZsYXNoKTsKICAgOTE5ICAKICAgOTIwICAgICAgICAgIHJl
dHVybiAwOwogICA5MjEgIGZhaWw6CiAgIDkyMiAgICAgICAgICBkZXZfZXJyKCZjbGllbnQtPmRl
diwgImdwaW8gcmVxdWVzdC9kaXJlY3Rpb25fb3V0cHV0IGZhaWwiKTsKICAgOTIzICAgICAgICAg
IHJldHVybiByZXQ7CiAgIDkyNCAgfQoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

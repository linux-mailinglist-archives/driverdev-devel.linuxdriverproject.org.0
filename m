Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B3214622A
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 07:52:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 75B8F22053;
	Thu, 23 Jan 2020 06:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gyl7zH8YBLYu; Thu, 23 Jan 2020 06:52:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2757D20457;
	Thu, 23 Jan 2020 06:52:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE4B51BF3BB
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 06:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C751E86ECC
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 06:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PxpwIbioeCim for <devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 06:52:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E64E486E1D
 for <devel@driverdev.osuosl.org>; Thu, 23 Jan 2020 06:52:19 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00N6iNau091086;
 Thu, 23 Jan 2020 06:52:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=NuRcXMlTm8Bb5dohmxmth9jGE9hSFEME+bJF931/IlY=;
 b=X48zT7VWXjkmD8/T/ZcSh3QdpAlYNFaOBryEn4nUdJ9m447I9rpzp+bVvA48pqyH8tbu
 XWyLwYF+6+xukcX0Jq98Lie60CHAyXIslNVItjdGxTyvqGdurUqrK3SEbSxCW1iblvRW
 ECNFGDz/vbBOLnfWHxh3qJXYkE50laFe7+DC3w+6J0KjWwX4l6fen7WXvRFJrpqrQNum
 TDiTl7oltyDh1j7bXx2equjI+Qj0cLgRVsV4UeBP3RggEUKqTpo4Epq9Pp5a/VcXZQ7R
 dqJjd3X1Z7VRFm8YbS9L5FKPMJ3p5sGDEnlaFiqNoNbQpoDCTz4G+FTPZyv/nLVFPteG rg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2xksyqg8nf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Jan 2020 06:52:16 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00N6iI3l097074;
 Thu, 23 Jan 2020 06:52:16 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2xpq0vs8rj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Jan 2020 06:52:15 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00N6qEhW020600;
 Thu, 23 Jan 2020 06:52:14 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 Jan 2020 22:52:13 -0800
Date: Thu, 23 Jan 2020 09:52:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp"
 <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [PATCH] staging: exfat: remove fs_func struct.
Message-ID: <20200123065205.GH1847@kadam>
References: <20200117062046.20491-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200122085737.GA2511011@kroah.com>
 <OSAPR01MB1569F24512678DEA1C175504900F0@OSAPR01MB1569.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSAPR01MB1569F24512678DEA1C175504900F0@OSAPR01MB1569.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9508
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001230057
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9508
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001230057
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
Cc: "'devel@driverdev.osuosl.org'" <devel@driverdev.osuosl.org>,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>,
 "Mori.Takahiro@ab.MitsubishiElectric.co.jp"
 <Mori.Takahiro@ab.MitsubishiElectric.co.jp>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "Motai.Hirotaka@aj.MitsubishiElectric.co.jp"
 <Motai.Hirotaka@aj.MitsubishiElectric.co.jp>,
 "'linux-fsdevel@vger.kernel.org'" <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDY6Mzg6NTNBTSArMDAwMCwgS29oYWRhLlRldHN1aGly
b0BkYy5NaXRzdWJpc2hpRWxlY3RyaWMuY28uanAgd3JvdGU6Cj4gSGVsbG8sIEdyZWcuCj4gCj4g
VGhhbmsgeW91IGZvciB0aGUgcXVpY2sgcmVwbHkuCj4gCj4gPiBBbHNvIHRoZSBwYXRjaCBkb2Vz
IG5vdCBhcHBseSB0byB0aGUgbGludXgtbmV4dCB0cmVlIGF0IGFsbCwgc28gSSBjYW4ndCB0YWtl
IGl0Lgo+IFRoZSBwYXRjaCBJIHNlbnQgd2FzIGJhc2VkIG9uIHRoZSBtYXN0ZXIgYnJhbmNoIG9m
IOKAnGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2dyZWdr
aC9zdGFnaW5nLmdpdC/igJ0KPiBhbmQgaXRzIHRhZyB3YXMgdjUuNS1yYzYuCj4gCj4gPiBBbHNv
IHRoZSBwYXRjaCBkb2VzIG5vdCBhcHBseSB0byB0aGUgbGludXgtbmV4dCB0cmVlIGF0IGFsbCwg
c28gSSBjYW4ndCB0YWtlIGl0LiAgUGxlYXNlIHJlYmFzZSBhbmQgcmVzZW5kLgo+IEkgd2lsbCBz
ZW5kIGEgbmV3IHBhdGNoIGJhc2VkIG9uIHRoZSBsYXRlc3QgbWFzdGVyIGJyYW5jaCBvZiDigJxo
dHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4
LW5leHQuZ2l04oCdLgo+IAo+IAo+IEJ5IHRoZSB3YXksIGNvdWxkIHlvdSBhbnN3ZXIgYmVsb3cg
cXVlc3Rpb25zIGZvciBteSBzZW5kaW5nIHBhdGNoZXMgaW4gZnV0dXJlPwo+IDEuIFdoaWNoIHJl
cG9zaXRvcnkgYW5kIGJyYW5jaCBzaG91bGQgYmUgYmFzZWQgd2hlbiBjcmVhdGluZyBhIG5ldyBw
YXRjaD8KPiAyLiBIb3cgZG8gSSBpbmZvcm0geW91IGFib3V0IGEgYmFzZSBvbiB3aGljaCBJIGNy
ZWF0ZSBhIHBhdGNoPwoKQWx3YXlzIGJhc2UgaXQgb24gc3RhZ2luZy1uZXh0IG9yIGxpbnV4LW5l
eHQuCgpObyBuZWVkIHRvIGluZm9ybSB1cy4gIElmIGl0IGRvZXNuJ3QgYXBwbHkgR3JlZyB3aWxs
IGVtYWlsIHlvdS4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

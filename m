Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E14621462A9
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 08:27:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D38C8699B;
	Thu, 23 Jan 2020 07:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2X9kTC_sa_M; Thu, 23 Jan 2020 07:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3AF88614E;
	Thu, 23 Jan 2020 07:27:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C55071BF3FD
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 07:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BC3F78615D
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 07:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWDtDgxrZ48L for <devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 07:27:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 323CB8614E
 for <devel@driverdev.osuosl.org>; Thu, 23 Jan 2020 07:27:32 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00N7NSGB134299;
 Thu, 23 Jan 2020 07:27:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=aNJtCdKiyElSLkFhxuIW9EKjg+NzaLIcTRbJ9YNwB90=;
 b=E0fWqhfGjPoWviMF9bDHdBTYzPeAvOZjFjvd2Fewp45EXCVCMUZDVMupfudy3DavDO7c
 ScNx1/ztlJfPQRpCpe+rvRC8gPyiAxEqVbfVJueoYR5Qe2HSXP++oVi9b60eUk4ZHWZi
 ZWxdkW9K1WbmXfeX451EdmGtbUuJwVetgBBlxEJKOtK8ECazO1EY5WRHQ+l5/wnlCQJw
 KwV7vzj57yoA34ulxdLtitNUAR3Trxxd18FzwPZDky81Jhcq4jErEQJo8w2m63f37+gV
 ht1aniAVX6aQ66fhfsX2xcr+506dF2YH6AlGPx1wRW5igiysyg35hvSKWZCyVv5tO6Y4 ig== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2xktnrg8a5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Jan 2020 07:27:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00N7NHM7032257;
 Thu, 23 Jan 2020 07:25:28 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2xppq4wd4j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Jan 2020 07:25:28 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00N7PP8h001915;
 Thu, 23 Jan 2020 07:25:25 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 Jan 2020 23:25:24 -0800
Date: Thu, 23 Jan 2020 10:25:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: me@kaowomen.cn
Subject: Re: [PATCH] staging: exfat: remove fs_func struct.
Message-ID: <20200123072515.GJ1847@kadam>
References: <20200117062046.20491-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200122085737.GA2511011@kroah.com>
 <OSAPR01MB1569F24512678DEA1C175504900F0@OSAPR01MB1569.jpnprd01.prod.outlook.com>
 <20200123070435.cjso5yh6nmmhd4gm@kaowomen.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123070435.cjso5yh6nmmhd4gm@kaowomen.cn>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9508
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001230063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9508
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001230063
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
Cc: "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp"
 <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>,
 "'devel@driverdev.osuosl.org'" <devel@driverdev.osuosl.org>,
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

T24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDM6MDQ6MzVQTSArMDgwMCwgbWVAa2Fvd29tZW4uY24g
d3JvdGU6Cj4gT24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDY6Mzg6NTNBTSArMDAwMCwgS29oYWRh
LlRldHN1aGlyb0BkYy5NaXRzdWJpc2hpRWxlY3RyaWMuY28uanAgd3JvdGU6Cj4gPiBIZWxsbywg
R3JlZy4KPiA+IAo+ID4gVGhhbmsgeW91IGZvciB0aGUgcXVpY2sgcmVwbHkuCj4gPiAKPiA+ID4g
QWxzbyB0aGUgcGF0Y2ggZG9lcyBub3QgYXBwbHkgdG8gdGhlIGxpbnV4LW5leHQgdHJlZSBhdCBh
bGwsIHNvIEkgY2FuJ3QgdGFrZSBpdC4KPiA+IFRoZSBwYXRjaCBJIHNlbnQgd2FzIGJhc2VkIG9u
IHRoZSBtYXN0ZXIgYnJhbmNoIG9mIOKAnGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L2dyZWdraC9zdGFnaW5nLmdpdC/igJ0KPiA+IGFuZCBpdHMgdGFnIHdh
cyB2NS41LXJjNi4KPiA+IAo+ID4gPiBBbHNvIHRoZSBwYXRjaCBkb2VzIG5vdCBhcHBseSB0byB0
aGUgbGludXgtbmV4dCB0cmVlIGF0IGFsbCwgc28gSSBjYW4ndCB0YWtlIGl0LiAgUGxlYXNlIHJl
YmFzZSBhbmQgcmVzZW5kLgo+ID4gSSB3aWxsIHNlbmQgYSBuZXcgcGF0Y2ggYmFzZWQgb24gdGhl
IGxhdGVzdCBtYXN0ZXIgYnJhbmNoIG9mIOKAnGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXTigJ0uCj4gPiAKPiA+IAo+ID4g
QnkgdGhlIHdheSwgY291bGQgeW91IGFuc3dlciBiZWxvdyBxdWVzdGlvbnMgZm9yIG15IHNlbmRp
bmcgcGF0Y2hlcyBpbiBmdXR1cmU/Cj4gPiAxLiBXaGljaCByZXBvc2l0b3J5IGFuZCBicmFuY2gg
c2hvdWxkIGJlIGJhc2VkIHdoZW4gY3JlYXRpbmcgYSBuZXcgcGF0Y2g/Cj4gPiAyLiBIb3cgZG8g
SSBpbmZvcm0geW91IGFib3V0IGEgYmFzZSBvbiB3aGljaCBJIGNyZWF0ZSBhIHBhdGNoPwo+IElm
IHlvdSBsaWtlIHlvdSBjYW4gYWRkIFtQQVRDSCAtbmV4dF0gdG8gcGF0Y2ggdGl0bGUgYmVmb3Jl
IHNlbmQgaXQuIDopCgpUaGlzIGFwcGxpZXMgdG8gbmV0d29ya2luZyBhbmQgbm90IHRvIHN0YWdp
bmcuICBGb3Igc3RhZ2luZywgYWx3YXlzIHdvcmsKYWdhaW5zdCBsaW51eC1uZXh0IG9yIHN0YWdp
bmctbmV4dC4KCkZvciBuZXR3b3JraW5nIHBhdGNoZXMgc2VudCB0byBEYXZlIE1pbGxlciwgdGhl
biB5b3UgaGF2ZSB0byBmaWd1cmUgb3V0CmlmIHRoZSBwYXRjaCBhcHBsaWVzIHRvIFtQQVRDSCBu
ZXRdIG9yIFtQQVRDSCBuZXQtbmV4dF0uICBKdXN0IHB1dHRpbmcKW1BBVENIIC1uZXh0XSBiZWNh
dXNlIHlvdSBoYXBwZW4gdG8gYmUgd29ya2luZyBvbiBsaW51eC1uZXh0IGlzIG5vdApjb3JyZWN0
LiAgWW91IGhhdmUgdG8gaW52ZXN0aWdhdGUgYm90aCBuZXR3b3JraW5nIHRyZWVzIHRvIGRldGVy
bWluZQp3aGVyZSB0aGUgcGF0Y2ggc2hvdWxkIGJlIGFwcGxpZWQuCgpyZWdhcmRzLApkYW4gY2Fy
cGVudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=

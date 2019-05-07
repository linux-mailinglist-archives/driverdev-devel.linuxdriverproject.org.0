Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E5315E00
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 09:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFAC786B0B;
	Tue,  7 May 2019 07:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZxjJPeL1pzb; Tue,  7 May 2019 07:19:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FF2086A40;
	Tue,  7 May 2019 07:19:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 939681BF336
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 901E985948
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zpTY3ZRjfWKT for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 07:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E554D85933
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 07:19:44 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x477IcRt038826;
 Tue, 7 May 2019 07:19:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=gh8GNwW8JqZ8l33L2MV69qCHnkHRZFobSuIcGq9lqV0=;
 b=venWrvI6fSC2eMSfNzb1Q926sV0muoBDKBR3ySVP26vVAExTIWIj/ycLzEF/EaE3pNqL
 Kfq4LuQOdvXOcoDZftZDcr0lWu6s/OXW8rcNEMRsKmFu10eq0A2RxcHPxQZRdurDnbia
 sPzFCWXBkxCEdOcC6XKjHzJ1D2SbnFHv/xZbTFrXUbYg5cOiXU58sj/Ktn1SoxWO7iWy
 TyBigWKovcvi3Y+0JxZWlgT42tTA6LSEL+W0cfC1OiqNHYlaHtIoc3HgPd5X5tcG8Tz0
 QgGlPbQzzMWdzyax7siw69SR2Upn40agESX8RjEOCJNMiJhXgPMHcaT7VDRTjO4RJjZ5 0A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2s94bfu2n9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 07:19:35 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x477JQw8151924;
 Tue, 7 May 2019 07:19:34 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2s9ayeqf76-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 07:19:34 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x477JP0j007791;
 Tue, 7 May 2019 07:19:25 GMT
Received: from kadam (/105.53.239.4) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 May 2019 00:19:24 -0700
Date: Tue, 7 May 2019 10:19:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Message-ID: <20190507071914.GJ2269@kadam>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557177887-30446-1-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905070048
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905070048
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
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMTE6MjQ6NDNQTSArMDIwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBIaSwKPiAKPiB0aGlzIHBhdGNoIHNlcmllcyBpcyBhbiBhdHRlbXB0IHRvIGZpeCB0
aGUgbWVzcywgSSd2ZSBzb21laG93IG1hbmFnZWQgdG8KPiBpbnRyb2R1Y2UuCj4gCj4gRmlyc3Qg
cGF0Y2ggaW4gdGhpcyBzZXJpZXMgaXMgZGVmYWN0byB2NSBvZiB0aGUgcHJldmlvdXMgMDUvMTAg
cGF0Y2ggaW4gdGhlCj4gc2VyaWVzLCBidXQgc2luY2UgdGhlIHY0IG9mIHRoaXMgMDUvMTAgcGF0
Y2ggd2Fzbid0IHBpY2tlZCB1cCBieSB0aGUKPiBwYXRjaHdvcmsgZm9yIHNvbWUgdW5rbm93biBy
ZWFzb24sIHRoaXMgcGF0Y2ggd2Fzbid0IGFwcGxpZWQgd2l0aCB0aGUgb3RoZXIKPiA5IHBhdGNo
ZXMgaW4gdGhlIHNlcmllcywgc28gSSdtIHJlc2VuZGluZyBpdCBhcyBhIHNlcGFyYXRlIHBhdGNo
IG9mIHRoaXMKPiBmaXh1cCBzZXJpZXMgYWdhaW4uCgpJIGZlZWwgc29ydCBvZiByaWRpY3Vsb3Vz
IGFza2luZyB0aGlzIG92ZXIgYW5kIG92ZXIuLi4gIE1heWJlIHlvdXIgc3BhbQpmaWx0ZXIgaXMg
ZWF0aW5nIG15IGVtYWlscz8KClRoaXMgYnVnIHdhcyBpbnRyb2R1Y2VkIGluIGh0dHBzOi8vcGF0
Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA5NDkxNi8KIlt2NCwwMS8xMF0gb2ZfbmV0OiBhZGQg
TlZNRU0gc3VwcG9ydCB0byBvZl9nZXRfbWFjX2FkZHJlc3MiIGJ1dCBpdApsb29rcyBsaWtlIG5v
IG9uZSBhcHBsaWVkIGl0LgoKWW91J3JlIGFjdGluZyBhcyBpZiBpdCAqd2FzKiBhcHBsaWVkIGJ1
dCB5b3UgcmVmdXNlIHRvIGFuc3dlciBteQpxdWVzdGlvbiB3aG8gYXBwbGllZCBpdCBhbmQgd2hp
Y2ggdG8gd2hpY2ggdHJlZSBzbyBJIGNhbiBmaWd1cmUgb3V0IHdoYXQKd2VudCB3cm9uZy4KCkkg
b25seSBzZWUgY29tbWVudHMgZnJvbSBsYXN0IEZyaWRheSB0aGF0IGl0IHNob3VsZG4ndCBiZSBh
cHBsaWVkLi4uICBJCmFsc28gdG9sZCB5b3Ugb24gRnJpZGF5IGluIGEgZGlmZmVyZW50IHRocmVh
ZCB0aGF0IHRoYXQgcGF0Y2ggc2hvdWxkbid0CmJlIGFwcGxpZWQuICBCcmVha2luZyBnaXQgYmlz
ZWN0IGlzIGEgYnVnLCBhbmQgd2UgbmV2ZXIgZG8gdGhhdC4gIEknbQpqdXN0IHZlcnkgY29uZnVz
ZWQgcmlnaHQgbm93Li4uICBXaGF0IEknbSB0cnlpbmcgdG8gZG8gaXMgZmlndXJlIG91dCBpbgpt
eSBoZWFkIGhvdyB0aGlzIHByb2Nlc3MgZmFpbGVkIHNvIHdlIGNhbiBkbyBiZXR0ZXIgbmV4dCB0
aW1lLgoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

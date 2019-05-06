Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 683C114F1F
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 17:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2215234BB;
	Mon,  6 May 2019 15:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2L988d8m3Qau; Mon,  6 May 2019 15:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2E75259FF;
	Mon,  6 May 2019 15:08:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D49C41BF95C
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CC2E92150B
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 15:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDsGJ7gcYEv3 for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 15:08:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 90381255B4
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 15:08:19 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x46F3o4l106193;
 Mon, 6 May 2019 15:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=rDJ/z/pPRZKtR5JzVGMLLDer4402GB87zt7n/gU4krU=;
 b=qEzSeP3aGTDv3s9znu1nX/m58g0qTnZdtpwUK1CQGRD3KDy2qgkIaoxVFwc/d6ws7egj
 wKcF47zucTRQ/UMQoV42jXTQnbrbo1me39YFnJGDlEghnI+xb8AKzpb70cRdkMZYEd2i
 len4M5CrDAbyEt9xWopCKmPOhQ1DHZBZz2BVpO0aHb8kNHooK6KP9UxzWxV3heh1s/+S
 IHEkd4K6qpvVJkObdyJWwYVF8oJH/PC9ukV87kuCFZ0lYFIYkXaJDTX3G+9dvHxZvWPI
 nWzAzWFZ7lixcllZPY2dSxcuLuG3RnRzQi3Z0oyn9pQKiKyurW1w7pvqKKcLmRZUpPQq YQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2s94b0f811-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 May 2019 15:08:02 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x46F6wpr045484;
 Mon, 6 May 2019 15:08:01 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2s94b8y1bu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 May 2019 15:08:01 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x46F7gJH005600;
 Mon, 6 May 2019 15:07:42 GMT
Received: from kadam (/196.110.137.40) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 May 2019 08:07:42 -0700
Date: Mon, 6 May 2019 18:07:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH net-next 1/3] net: ethernet: support of_get_mac_address
 new ERR_PTR error
Message-ID: <20190506150713.GH2269@kadam>
References: <1557136717-531-1-git-send-email-ynezz@true.cz>
 <1557136717-531-2-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557136717-531-2-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=814
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905060130
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=845 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905060130
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
Cc: Andrew Lunn <andrew@lunn.ch>, Thor Thayer <thor.thayer@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Andreas Larsson <andreas@gaisler.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Byungho An <bh74.an@samsung.com>, Frank Rowand <frowand.list@gmail.com>,
 John Linn <John.Linn@xilinx.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Vipul Pandya <vipul.pandya@samsung.com>, linux-renesas-soc@vger.kernel.org,
 Felix Fietkau <nbd@openwrt.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 Jose Abreu <joabreu@synopsys.com>, bcm-kernel-feedback-list@broadcom.com,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Sunil Goutham <sgoutham@cavium.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 nios2-dev@lists.rocketboards.org, devel@driverdev.osuosl.org,
 Grygorii Strashko <grygorii.strashko@ti.com>, Robert Richter <rric@kernel.org>,
 Girish K S <ks.giri@samsung.com>, Nelson Chang <nelson.chang@mediatek.com>,
 Wingman Kwok <w-kwok2@ti.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Doug Berger <opendmb@gmail.com>,
 linux-mediatek@lists.infradead.org, Murali Karicheri <m-karicheri2@ti.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Mirko Lindner <mlindner@marvell.com>,
 Salil Mehta <salil.mehta@huawei.com>, Fugang Duan <fugang.duan@nxp.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 netdev@vger.kernel.org, Anirudha Sarangi <anirudh@xilinx.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMTE6NTg6MzVBTSArMDIwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBUaGVyZSB3YXMgTlZNRU0gc3VwcG9ydCBhZGRlZCB0byBvZl9nZXRfbWFjX2FkZHJl
c3MsIHNvIGl0IGNvdWxkIG5vdyByZXR1cm4KPiBFUlJfUFRSIGVuY29kZWQgZXJyb3IgdmFsdWVz
LCBzbyB3ZSBuZWVkIHRvIGFkanVzdCBhbGwgY3VycmVudCB1c2VycyBvZgo+IG9mX2dldF9tYWNf
YWRkcmVzcyB0byB0aGlzIG5ldyBmYWN0LgoKV2UgbmVlZCBhIEZpeGVzIHRhZyBzbyB3ZSBjYW4g
bG9vayBhdCB0aGUgY29tbWl0IHdoaWNoIGFkZHMgTlZNRU0Kc3VwcG9ydC4KCkl0J3Mgbm90IGNs
ZWFyIHRvIG1lIHRoYXQgYW55b25lIGV2ZXIgYXBwbGllZCB0aGF0IHBhdGNoLiAgSWYgbm90IHRo
ZW4Kd2hvIGhvbyEgIExldCdzIG5vdCBhcHBseSBpdC4gIEJ1dCBpZiBpdCBoYXMgYmVlbiBjb21t
aXR0ZWQgdGhlbiBpdCBoYXMKYSBnaXQgaGFzaC4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

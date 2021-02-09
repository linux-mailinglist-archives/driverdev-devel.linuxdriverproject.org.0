Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9E7314C95
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 11:13:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADBA28733D;
	Tue,  9 Feb 2021 08:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AmvV7xvS45H1; Tue,  9 Feb 2021 08:06:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA987872ED;
	Tue,  9 Feb 2021 08:06:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D25E1BF282
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 08:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0262B872D7
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 08:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sHjuh7a1ZdGu for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 08:06:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ABADE872D4
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 08:06:50 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1197xF1W185136;
 Tue, 9 Feb 2021 08:06:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=FgbAm48IzN4NjhMcfVudFiqdSoE9vqOSbrnwPBxudIU=;
 b=DtIerUdiuipSsIr9VodYqA4p5BBzwPJ86kX+shahaqZ+CsGdSgchtLz+G/hHX3QYxYIQ
 2Bl57p0VNckurTBjzJUFBLlOGFNPpV21aNF/EaioCoFsgJdRGCbEwSHuYlUyqOrhYpoR
 SDlimMJl8n9WHMIeYgPTEpv1seUzcqmOrKjHcVarpw/TK6txsCSNwmpUzWhzpaTvUAvG
 z2ZMQNI6AyR8SALtap5aV9XHVbKiEgCiPioxhpRyG/Wi0xWsY7p4R3LuEBQxH5BHeuNK
 Gixb6ClXAZNgxb0CF3iQ7Ltfi8EhQsuuft3H1uVrgzxYHXWNs+ffF3tq0vcrmQ1THRxl eA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 36hk2kek7j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 09 Feb 2021 08:06:49 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1197xsuM167532;
 Tue, 9 Feb 2021 08:06:47 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 36j4pncj41-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 09 Feb 2021 08:06:47 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11986jig021903;
 Tue, 9 Feb 2021 08:06:45 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 09 Feb 2021 00:06:44 -0800
Date: Tue, 9 Feb 2021 11:06:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Youling Tang <tangyouling@loongson.cn>
Subject: Re: [PATCH] staging: fix ignoring return value warning
Message-ID: <20210209080633.GO20820@kadam>
References: <1612689808-30985-1-git-send-email-tangyouling@loongson.cn>
 <20210208134517.GG2696@kadam>
 <20210208150618.GI8233@pengutronix.de>
 <20210208190237.GN20820@kadam>
 <13779748-ab8e-c7c3-11e4-5232836f5ae6@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13779748-ab8e-c7c3-11e4-5232836f5ae6@loongson.cn>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9889
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102090037
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9889
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 lowpriorityscore=0
 bulkscore=0 suspectscore=0 spamscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102090037
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
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Sascha Hauer <sha@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 09:18:02AM +0800, Youling Tang wrote:
> Hi, Dan
> 
> 
> On 02/09/2021 03:02 AM, Dan Carpenter wrote:
> > On Mon, Feb 08, 2021 at 04:06:18PM +0100, Sascha Hauer wrote:
> > > Hi Dan,
> > > 
> > > On Mon, Feb 08, 2021 at 04:45:17PM +0300, Dan Carpenter wrote:
> > > > On Sun, Feb 07, 2021 at 05:23:28PM +0800, Youling Tang wrote:
> > > > > Fix the below ignoring return value warning for device_reset.
> > > > > 
> > > > > drivers/staging/mt7621-dma/mtk-hsdma.c:685:2: warning: ignoring return value
> > > > > of function declared with 'warn_unused_result' attribute [-Wunused-result]
> > > > >          device_reset(&pdev->dev);
> > > > >          ^~~~~~~~~~~~ ~~~~~~~~~~
> > > > > drivers/staging/ralink-gdma/ralink-gdma.c:836:2: warning: ignoring return value
> > > > > of function declared with 'warn_unused_result' attribute [-Wunused-result]
> > > > >          device_reset(&pdev->dev);
> > > > >          ^~~~~~~~~~~~ ~~~~~~~~~~
> > > > > 
> > > > We can't really do this sort of fix without the hardware to test it.
> > > > This could be the correct fix or perhaps switching to device_reset_optional()
> > > > is the correct fix.  We can't know unless we have the hardware to test.
> > > When device_reset() is the wrong function then adding a return value
> > > check will turn this into a runtime error for those who have the
> > > hardware which will hopefully trigger them to tell us why reset_device
> > > is wrong for them.
> > > At least for a staging driver I find this procedure opportune.
> > > 
> > That seems like sort of a jerk move...  What's the rush?  Someone will
> > eventually be able to test this if we just wait around for a bit.
> > Otherwise if no one has the hardware then eventually the driver will be
> > deleted.
> > 
> > regards,
> > dan carpenter
> We do not have the relevant hardware to test, this is just to solve a
> compile-time warning.

Yeah, I know.  Wait for someone who can test it on this.  Normally we
don't require testing for staging patches.  But in this case, it's
impossible to know which is the proper fix without testing so we should
wait.  It's rude to test by breaking people's systems and hope they
report the bug.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

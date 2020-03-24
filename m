Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7FC1917B7
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 18:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 954D287EE7;
	Tue, 24 Mar 2020 17:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZArRqGclEIm; Tue, 24 Mar 2020 17:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CDDF87E7D;
	Tue, 24 Mar 2020 17:35:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9F371BF344
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 17:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C563787DE7
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 17:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9DRI6x6rqTQD for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 17:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 714DF87D48
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 17:35:30 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02OHX8rt094937;
 Tue, 24 Mar 2020 17:35:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=93E2/BAwWeHsNDv0F9mxaIFBaB7h3T6FEvTX5l9gaPk=;
 b=UsCyLVt7hp6JU5Hs1F0vxt6991tQzGAdnK7+pcHuDi45wRpFYqz5HFhU5+CaC6Il4lo1
 rZqBIrEs95lKLj9UbraYAJFVkQAI683bBqsLBOv+64Rs3OD4NgWHIx4YZN1vMYMDHWDb
 2XJm34GtXcKZPVR59MumKbhmni3Ukd3UlY2Dw10Mxw9u44vlLtOsYfHmjcNb8ce/EWqF
 TztQT5gfgZj/KciLNd/DjUyLBz/Tj+t7UNr+CEWFrK7ApUf9QfZqmZO0s+Vb9PLXnZtU
 4NB3xaLfUFHDUmrTjvBUhQVeJf/WTWWwQVsTnpZ6fkYK4QrJLmGkFmMtCP56E9LOKvKi vw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2ywabr5qy1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Mar 2020 17:35:28 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02OHWKSg181616;
 Tue, 24 Mar 2020 17:35:27 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2yymbtw6sk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Mar 2020 17:35:27 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02OHZKcY006170;
 Tue, 24 Mar 2020 17:35:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 24 Mar 2020 10:35:20 -0700
Date: Tue, 24 Mar 2020 20:35:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Bastien Nocera <hadess@hadess.net>
Subject: Re: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
Message-ID: <20200324173512.GH26299@kadam>
References: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
 <20200324152040.GA2511658@kroah.com>
 <73723ab7d2c64c7d5ce7e2ae05b857c965824168.camel@hadess.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73723ab7d2c64c7d5ce7e2ae05b857c965824168.camel@hadess.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9570
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0
 adultscore=0 malwarescore=0 bulkscore=0 spamscore=0 mlxlogscore=832
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003240090
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9570
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 clxscore=1011 adultscore=0 mlxscore=0 mlxlogscore=897 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003240090
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
 linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 24, 2020 at 04:21:47PM +0100, Bastien Nocera wrote:
> On Tue, 2020-03-24 at 16:20 +0100, Greg Kroah-Hartman wrote:
> > On Tue, Mar 24, 2020 at 11:36:00AM +0100, Bastien Nocera wrote:
> > > Make it possible to disable the LED, as it can be pretty annoying
> > > depending on where it's located.
> > > 
> > > See also https://github.com/lwfinger/rtl8188eu/pull/304 for the
> > > out-of-tree version.
> > > 
> > > Signed-off-by: Bastien Nocera <hadess@hadess.net>
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_led.c      | 6 ++++++
> > >  drivers/staging/rtl8188eu/include/drv_types.h | 2 ++
> > >  drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 5 +++++
> > >  3 files changed, 13 insertions(+)
> > 
> > Why was this resent?  Didn't I just reject this?
> 
> It wasn't resent, it's the same mail you already answered.

It says "resend" in the subject.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

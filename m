Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC643276D7
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:24:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94C41869BA;
	Thu, 23 May 2019 07:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8S7baLaP4PAY; Thu, 23 May 2019 07:24:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F61883C6B;
	Thu, 23 May 2019 07:24:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E2AD1BF3FC
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8947284368
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPCq-8GZjyvS for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:24:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FFE183C6B
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:24:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A9A7204EC;
 Thu, 23 May 2019 07:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558596261;
 bh=p1vx5T5TzR7Lt49i3nph2k69PblDSo4eJT1e5+vVKFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0NizurRKh/LVy/gfKuBw6BnaROB/rIJmFEDnRO6WE3pIyryAlxvgHfzsTq9jfzlV/
 rEFK77NOvJtKfCyk08urfr7i0+cNzSVbxkPMPJHLeDwuhAiPAV5S//L+o/ARmc1mGP
 coeET8lLa/NY3muQOIy+NdWiudwGLrIh/3AlVgi4=
Date: Thu, 23 May 2019 09:24:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH v3] staging: rtl8723bs: core: rtw_ap: fix Unneeded
 variable: "ret". Return "0
Message-ID: <20190523072419.GA5628@kroah.com>
References: <20190522171137.GA5579@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522171137.GA5579@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Omer Efrat <omer.efrat@tandemg.com>, linux-kernel@vger.kernel.org,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Quytelda Kahja <quytelda@tamalin.org>, Wen Yang <wen.yang99@zte.com.cn>,
 Murray McAllister <murray.mcallister@insomniasec.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 10:41:37PM +0530, Hariprasad Kelam wrote:
> Function "rtw_sta_flush" always returns 0 value.
> So change return type of rtw_sta_flush from int to void.
> 
> Same thing applies for rtw_hostapd_sta_flush
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ------
>  Changes v2 -
>        change return type of rtw_sta_flush
> ------
>  Changes v3 -
>        fix indentaion issue

This patch does not apply to my tree.  Please refresh it against the
staging-next branch and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

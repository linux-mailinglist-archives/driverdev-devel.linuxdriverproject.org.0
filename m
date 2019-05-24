Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4670329166
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:59:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD58F88B5F;
	Fri, 24 May 2019 06:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p82fsItFs0da; Fri, 24 May 2019 06:59:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9034788B4B;
	Fri, 24 May 2019 06:59:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 120941BF23B
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0F4AF88B41
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2EEICnb9Tgz for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:59:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6EA3F882B6
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:59:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3EC62175B;
 Fri, 24 May 2019 06:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558681147;
 bh=DJsZxsdJ5VMoeUdnAwjQRoPNoGPBg2DiyLHVBQ0oJHM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PoYzL2LQszVFzGkbCv3QHpyTyproCgBIiIh7tvOmNd/7rz+mQ4Wr/e5wA+qUsXkov
 9jUJwM9tWTR4+pAqgY7YsY74m9fbCMRL2JiF314PXDKgF3RG9S6dj6i+DJhl2aclPW
 sG8KlJpmqYJsW6FXtsQBs1HE/hLdynS944QsVRBI=
Date: Fri, 24 May 2019 08:59:05 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [Patch v4] staging: rtl8723bs: core: rtw_ap: fix Unneeded
 variable: "ret". Return "0
Message-ID: <20190524065905.GE3600@kroah.com>
References: <20190523181009.GA9411@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523181009.GA9411@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, Jeeeun Evans <jeeeunevans@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Omer Efrat <omer.efrat@tandemg.com>, linux-kernel@vger.kernel.org,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Murray McAllister <murray.mcallister@insomniasec.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 11:40:09PM +0530, Hariprasad Kelam wrote:
> Function "rtw_sta_flush" always returns 0 value. So change
>  return type of rtw_sta_flush from int to void.

Odd line wrapping :(

Also your subject line is missing a trailing '"' character :(

v5?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

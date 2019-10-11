Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5420D46A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 19:32:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 299B5889A3;
	Fri, 11 Oct 2019 17:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vzy2zpICLqDi; Fri, 11 Oct 2019 17:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E7028893C;
	Fri, 11 Oct 2019 17:32:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43C751BF5E0
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 17:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 37F3788146
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 17:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vmpf1OCQyaFm for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 17:32:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65D3288140
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 17:32:46 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r5so12772660wrm.12
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 10:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0/9IsMNxXFpzgpaplMTTJNjUfGAJXf9fbcKoKx8v53Q=;
 b=WL7s+/2G59mCB7nzctnOqljGY5l3+vfIxsjDB1xjUGn9W7OrilZecpTx+TJoktRsJd
 f7JyMOJFERcwQZsHG/a5dVTUde/b0hszrKiiZZ8GKnRqPXCEoJb/KNUo14/cWQ/BdLm1
 jdaTdwmL0ywJKU4uWiovnSf4uQfvJu29PyH7yg1oKVjL8Z3arn3tOYdDonL/nBI2bRJl
 NoHsvddfeptwaTpVENqHKY+V+ZxhIgTrzdchtMart28BJJ3+7x1tu8Ty8Mithkz41iFJ
 4jOhLw2A5+zjTcS/ltGBgaJViHohT6TqDcBjdf2P/Yvgy1y5knUFK8QYB8w3LRjV3k4x
 Dc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=0/9IsMNxXFpzgpaplMTTJNjUfGAJXf9fbcKoKx8v53Q=;
 b=fmgN44O8ZhS4SQT3heYCJEVI/asYlIXVWhgnI5InlQxwburZKTK9ZB8ihkD+r0FmvE
 tpHYvtI9ti3mZl77oU/PuwIe4+pEPX4DX7A23/zVpmoy5bqHMvVsWDnI0YQV1x/zavW4
 U7S6L1QxGlbc8wcz8PnqzCV1+rAfcb71S0ywydbIWJq36uSH3baOGXP/5xrgSfaOGdWC
 xyR97oG/qPbhXwL5LiC+v+9+0SuTWofNW+su+Xq8i04rKunP4+kFsgT3QWKUEOVXSZLJ
 HIvtcOONSjbjqUu9kREZ/RWsz73zCVAAZijkqeaz9pTS+DD2lYaGIhz7zbaeUGvJSlZj
 QD7Q==
X-Gm-Message-State: APjAAAWfzqBK8MPKE1GUpfndeFdR2oaoXkTcApQc36Wdyk3Bnezosth0
 r43O7l0tK2itE5KMvi6p9OA=
X-Google-Smtp-Source: APXvYqymkSwChXeABQJrUI9s4HLxbJ/o1Zyz9uPvLUOLFFmi5YpbAc520SKpMEqYIBYeN7E3WK866Q==
X-Received: by 2002:a5d:6b0a:: with SMTP id v10mr13374449wrw.32.1570815164747; 
 Fri, 11 Oct 2019 10:32:44 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id r140sm13122626wme.47.2019.10.11.10.32.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 10:32:43 -0700 (PDT)
Date: Fri, 11 Oct 2019 20:32:38 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/4] staging: rtl8723bs: Remove
 comparisons to NULL in conditionals
Message-ID: <20191011173238.GA22411@wambui>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
 <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
 <20191011105404.GA4774@kadam> <20191011120717.GA1143018@kroah.com>
 <20191011120847.GB1143018@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011120847.GB1143018@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Reply-To: 20191011120847.GB1143018@kroah.com
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 02:08:47PM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 02:07:17PM +0200, Greg KH wrote:
> > On Fri, Oct 11, 2019 at 01:54:04PM +0300, Dan Carpenter wrote:
> > > On Thu, Oct 10, 2019 at 04:15:29PM +0300, Wambui Karuga wrote:
> > > >  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
> > > > -	if (psetauthparm == NULL) {
> > > > -		kfree(pcmd);
> > > > +	if (!psetauthparm) {
> > > > +		kfree((unsigned char *)pcmd);
> > > 
> > > This new cast is unnecessary and weird.
> > 
> > Ah, I missed that, good catch.  I'll go drop this patch now.
> 
> And that caused the second patch to get dropped as well.  I'll just drop
> them all, can you redo the whole series please?
> 
> thanks,
> 
> greg k-h
> 
The cast seems to have been removed earlier by Nachammai Karuppiah and
added to staging-testing, but I added it back when I cherry-picked my changes to the new
file. 

Sorry. :(
I can remove the cast and send a new series.
Thanks.

wambui karuga
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

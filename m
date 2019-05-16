Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EEF20E9A
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 20:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDB12882A1;
	Thu, 16 May 2019 18:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gud96Wp8mpFq; Thu, 16 May 2019 18:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACE9388289;
	Thu, 16 May 2019 18:25:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8DA1BF33B
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 18:25:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07F653133D
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 18:25:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pUrv4aKV9fWB for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 18:25:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 9C81E312FF
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 18:25:44 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t22so1952931pgi.10
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 11:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8D5391fetjU3ekpZDrWHFkxYRoxxpYevMJ+dYscZYgI=;
 b=ilihGdHq5nQwNlLktCUC/vVKyU1fXVJWqW87byC165CM1EZpJ+aQU+VjKQ4UlcmK++
 Zq31eXM8DYdkbJzeg3PHI3FBu5REMWBhtKn3eAoDsspM792laAqSyP5ye071TMt5NS6M
 bjUNkpMoBc36rNGhIsRoT/0QOYwkVNQErPCei61/UURXQ3ekhE8Bza1O+SxnWhFo/dYs
 r57oCB9gZmDIC7DtTtcXPcAaMosN9i6TBQ4tftJhNHHDsKfENrBjd8jycqItl1zDu794
 ivVNhPRFBzFFTJE6PAY2b2KP+frsz69Y4dBtr5rwEe1IoyseLhLtNhdEPwTZzfdI6Rbf
 FO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8D5391fetjU3ekpZDrWHFkxYRoxxpYevMJ+dYscZYgI=;
 b=kc2xiyxWnf6Pne+jwnvR7GmKl1uk2l/yTbOnkJlDzV9NroSDVYXo1hlI5dqGlejRXl
 +bGDlur0uMRsYHvkgT0MOrlY3eNuaWX2Rf535ihkyLRmRHdo3GOKy3HCX0JPBkndOGl0
 HyOKNgGVvbTWTVTtRRZxWPJIOy9lcF5KuRbbvVfH3csonx40AF/mQkr8SlyN6SBTHD8j
 hOosTRYou1KbTkSJyNyGR7B7HQqB1IcR9Y1mlTHt1VoXkD0EHGZyOeNIhspLF6MFwsEx
 IgxYM+gjY3e9Hf5Dd1eN8XL6Ag1JVvYmnYUfr08l7oUtIx5b9XNuHngVimUoSsm7L1rw
 2FMw==
X-Gm-Message-State: APjAAAXH6Kf38LzBxaPMGO7T8QE9ns7BWFLr+C6uV+yQOdgZKeBFE7hq
 EBm+QYh/96sWrR3SGzIvLTg=
X-Google-Smtp-Source: APXvYqzCa3PHgMcdhgxs0zbPcf6J8Iy1f6cUT3SqlMGD586iDTYpr1mSBOuiWTmJ/BsJ9jrdQfGlVg==
X-Received: by 2002:a63:1316:: with SMTP id i22mr51726562pgl.274.1558031144325; 
 Thu, 16 May 2019 11:25:44 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id s9sm9226513pfa.31.2019.05.16.11.25.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 11:25:43 -0700 (PDT)
Date: Thu, 16 May 2019 23:55:39 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: core: rtw_recv: fix warning
 Comparison to NULL
Message-ID: <20190516182538.GA4025@hari-Inspiron-1545>
References: <20190515174536.GA4965@hari-Inspiron-1545>
 <20190516080056.GH31203@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516080056.GH31203@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 16, 2019 at 11:00:56AM +0300, Dan Carpenter wrote:
> On Wed, May 15, 2019 at 11:15:36PM +0530, Hariprasad Kelam wrote:
> > @@ -1042,7 +1042,7 @@ sint sta2ap_data_frame(
> >  		}
> >  
> >  		*psta = rtw_get_stainfo(pstapriv, pattrib->src);
> > -		if (*psta == NULL) {
> > +		if (!*psta == NULL) {
>                     ^^^^^^^^^^^^^^
> It's surprising that this didn't cause some kind of warning somewhere...

Thanks for pointing out this error. Here my intention is to write
                if(!*psta) 
but somehow i missed it .

Will resend this patch after correcting the same.Like below

> -           if (*psta == NULL) {
> > +           if (!*psta) {


Do let me know if the above propose change is fine or not.
> 
> >  			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under AP_MODE; drop pkt\n"));
> >  			DBG_871X("issue_deauth to sta =" MAC_FMT " for the reason(7)\n", MAC_ARG(pattrib->src));
> >  
> 
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

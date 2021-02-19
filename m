Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 585BA31FA09
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 14:43:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF78B60707
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 13:43:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uu1l0cii3zlr for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 13:43:30 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 2CA8D606FE; Fri, 19 Feb 2021 13:43:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D113605D7;
	Fri, 19 Feb 2021 13:43:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E31C1BF393
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 13:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F192B605C6
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 13:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhzB-LQB4qSJ for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 13:43:02 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 280216068A; Fri, 19 Feb 2021 13:43:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E86D7605C6
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 13:43:00 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id p21so4257603pgl.12
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 05:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fF/l9GNDkFGA7iWke5utB4iGCtSkQ0+416veSvVe1Xc=;
 b=Ls+CxRRjfhhnhwhZ86f/IoT6Mf5Y2cn9JQfrMvKEjmb7DXLNUYyR0hFyMkn0nWJESz
 FF7wAVCvZJnhE4FQpxAnpCHXwHlXdVOX6BeRg4DT9zOSqqTTImxYNUd3b6A2Q7NJnowX
 oB8IEt7vf1mTCkL80bdzKw2ZQQFy3nX/1h4b/PQDF2xzgE5DqT37FgFuXVwL1oJU9+lG
 U1ddBHqIPQ8Ps+G3liJxCAN/8eFga0wPsqJfv+Bxyl/YdLs8Pc+GKss4CvYxDbvC7c31
 iBHC9Fs/gDcC9Pyw9KpyQ00/OaM+FnEZlRHa/YjZKVq4B+ePs9AIBYpqPl+LXvSmazUL
 i5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fF/l9GNDkFGA7iWke5utB4iGCtSkQ0+416veSvVe1Xc=;
 b=qGQgStseFTMcl825gIjVhx5K7twBFgPghRWHuOXK/avWqnwQwgghdWTC2DjsBLvxhm
 YDZ6/QJn+5RObeBw3qMfitDl25csWOBPCKpGeZ4I3WFUj/KyrbFC3NR3gzqhDycIaFSj
 o3kL0E0UR1m9QHX2FV/cdQUFpgspoNUI5yrrt4qyV4BNoNlNa6xCv60uKqvvMvVNIc+e
 S9NFPwunuQaPxqVnQ/KXd6MMuFVk8Vd+EBsL2WyWKnAy/mNsipw8CDYN8+yucFdBhY7U
 suuAOLjXBMW7HT73Gob8LV5trmgymRbSJM632QqSRzfZP9p2Fb1xvPPLSYWPFymOqoBv
 XxeA==
X-Gm-Message-State: AOAM530KRW89y1uQeB0OAK2GkUoYJLIOLqaMHRuVPt0cWZWwPkN1Y8q6
 0glAQMqNnAOBblWLqEtSKNo=
X-Google-Smtp-Source: ABdhPJyZcXFAu9Vo0fwlCIcLHRFiIPRLTt+cK56Il2JoY/G8Xa9b+8HCXYB7Zhv8BhkJlXTodQfAAA==
X-Received: by 2002:a65:4781:: with SMTP id e1mr8635474pgs.30.1613742180006;
 Fri, 19 Feb 2021 05:43:00 -0800 (PST)
Received: from amrit ([49.36.144.93])
 by smtp.gmail.com with ESMTPSA id w187sm9251403pfb.208.2021.02.19.05.42.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 05:42:59 -0800 (PST)
From: Amrit Khera <amritkhera98@gmail.com>
X-Google-Original-From: Amrit Khera <amritk10>
Date: Fri, 19 Feb 2021 19:10:03 +0530
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: android: Fix const keyword style issue in
 ashmem.c
Message-ID: <20210219134000.GA25666@amrit>
References: <20210219114237.5720-1-amritkhera98@gmail.com>
 <YC+rQZoFaT+mPxVL@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YC+rQZoFaT+mPxVL@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, surenb@google.com,
 Amrit Khera <amritkhera98@gmail.com>, linux-kernel@vger.kernel.org,
 hridya@google.com, arve@android.com, dan.carpenter@oracle.com,
 joel@joelfernandes.org, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 01:12:49PM +0100, Greg KH wrote:
> On Fri, Feb 19, 2021 at 05:12:38PM +0530, Amrit Khera wrote:
> > This change fixes a checkpatch warning for "struct file_operations
> > should normally be const".
> > 
> > Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
> > ---
> > Changes in v2:
> >  - Wrapped the commit description
> >  - Build tested
> 
> If you tested it, what changed in the diff itself?  Looks the same to
> me...
> 

After further investigating I found that the particular kernel module
was not set in the config file. This did not build it when I built the
kernel. This was making me think that the module was building correctly.

After updating the config, the build indeed breaks. The reason is that
the const keyword cannot be applied here without changing the structure
and flow of the code as the particular variable is later being set in a
condition. Hence, I will be dropping this path for now.

Apologies for the inconvenience caused and thank you for the prompt
replies.

Best Regards,
Amrit Khera
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

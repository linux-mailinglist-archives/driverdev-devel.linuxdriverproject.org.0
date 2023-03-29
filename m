Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC946CDC87
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Mar 2023 16:28:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E9FE41E86;
	Wed, 29 Mar 2023 14:28:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E9FE41E86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fuf7HUaRncRU; Wed, 29 Mar 2023 14:28:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A810541E70;
	Wed, 29 Mar 2023 14:28:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A810541E70
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8771BF3E9
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 14:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75A26614B6
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 14:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75A26614B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1QGOJ6HK8RZE for <devel@linuxdriverproject.org>;
 Wed, 29 Mar 2023 14:27:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A990061466
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A990061466
 for <devel@driverdev.osuosl.org>; Wed, 29 Mar 2023 14:27:57 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id u15so4774692qkk.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Mar 2023 07:27:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680100076;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7JQ1XJjsuL6lqx3M3lM712uJGJOEQmz6djad/U4y/oU=;
 b=OPyiNK8CjLth5Q4rkSHk0W31GXUXxt2XyaCLgq8xn3PM/4FygHA7+6xV7M9qEAZSst
 8T9UXfleAZrgrd38yzyL75FE8g0N9qXdUpZNwwFck5UYrW4juIry7snQ6CJ8wLbkI3fr
 /Bc6jP9t3J5DzSowhKcxavuTVgwWTc8NZ26Iw5aEWr7EBq71qmJvY0dJOC6qnKj6WTzl
 Wjixo+D1nPLIlRN4MQTweUxhbWgaQ+tMTvPLUmgH/QmCsclRrkhRDQ4h1ciMTAjrKbPO
 vyMnbmjya2SYX32PQnkqY6BW5Gy9CNJ8pIrGrIZbeOehH6h0Vv571s5K/LihpdfcjoI0
 pJ7A==
X-Gm-Message-State: AO0yUKXo+Hj66IoYlimdz+mRoB4Pnol2JUa+N/o2wIj/9QpaRJ5V5iAq
 Qp/NRhSoiU1sBoXX+dE6Cn/Vyzzp8E5c/lac+yU=
X-Google-Smtp-Source: AK7set+BHqeCs8Skkw2w2L5Xm0DUXvtQ318RZhOkITUti3EH+kL2u4jZ5oHcNttXsVQ1T0vXityEW+BFPv9CMj+sz4o=
X-Received: by 2002:ae9:efc6:0:b0:745:72f3:637f with SMTP id
 d189-20020ae9efc6000000b0074572f3637fmr4877583qkg.13.1680100076478; Wed, 29
 Mar 2023 07:27:56 -0700 (PDT)
MIME-Version: 1.0
References: <ZCQeyWW3+d7+qT+b@CloudiRingWorld> <ZCQkPr6t8IOvF6bk@kroah.com>
In-Reply-To: <ZCQkPr6t8IOvF6bk@kroah.com>
From: Kloudifold <cloudifold.3125@gmail.com>
Date: Wed, 29 Mar 2023 22:27:45 +0800
Message-ID: <CAM44cXPVDMoGiMc9v+Z6wPANEW1vaj3=odVW8NtuDUtg+0qf1w@mail.gmail.com>
Subject: Re: [PATCH v6] staging: sm750: Rename sm750_hw_cursor_* functions to
 snake_case
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680100076;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7JQ1XJjsuL6lqx3M3lM712uJGJOEQmz6djad/U4y/oU=;
 b=TP6L/5HG8ebiZoSa2P+wCP6OGe6YnQoguc3nyBjnrvkJpSOMvtjFKki624FZ9tf5D0
 AazONSqjyvAr27iyjCqDKqs4PGvpphbD6fww3s7XzZcwPFqi7QRoQB5Zjh21VyPPFhlE
 N4W7wmzn82J6dGC6PX2FeD+/4Yyeuci+Eo9IqNsWWRAJrYfauxfPa03SJKWnvqAhkE+B
 q18hnjjmg77ozqDSF3CSREmOvYFfe7/P5npWhOGIYs2V7MQ3PnvjJn0T9knXZtOQ83Ix
 lLnqUrKPI2ozCmsFF/+LFJ+wvODOzCH9cpaH+UtN5mMvrAi5AL6zZOco77E/cTyxqN3T
 KRhQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=TP6L/5HG
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Teddy Wang <teddy.wang@siliconmotion.com>, outreachy@lists.linux.dev,
 alison.schofield@intel.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 29 Mar 2023 at 19:42, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 29, 2023 at 07:27:04PM +0800, Kloudifold wrote:
> > sm750 driver has sm750_hw_cursor_* functions, which are named in
> > camelcase. Rename them to snake case to follow the function naming
> > convention.
> >
> > - sm750_hw_cursor_setSize  => sm750_hw_cursor_set_size
> > - sm750_hw_cursor_setPos   => sm750_hw_cursor_set_pos
> > - sm750_hw_cursor_setColor => sm750_hw_cursor_set_color
> > - sm750_hw_cursor_setData  => sm750_hw_cursor_set_data
> > - sm750_hw_cursor_setData2 => sm750_hw_cursor_set_data2
> >
> > Reported-by: kernel test robot <lkp@intel.com>
>
> The test robot did not report that the names were incorrect :(
>
> > Link: https://lore.kernel.org/oe-kbuild-all/202303110849.X24WnHnM-lkp@intel.com/
> > Signed-off-by: Kloudifold <cloudifold.3125@gmail.com>
>
>  Is that the name you use to sign documents?

Yes.

>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

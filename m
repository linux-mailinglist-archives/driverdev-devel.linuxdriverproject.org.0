Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F2CFB57
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 15:31:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92E01876C3;
	Tue,  8 Oct 2019 13:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXOdpbSdslCP; Tue,  8 Oct 2019 13:31:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50C9586A3C;
	Tue,  8 Oct 2019 13:31:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E42E01BF2A6
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 13:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0D2E2051A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 13:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Knlp0OjX2waa for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 13:31:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C622204C6
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 13:31:44 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id 67so14006524oto.3
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 06:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DlqTGKDatQ39JBp5MaCG8YiZeVo+Zi+HgwYgtcFJ7bM=;
 b=jaok6n+ftbtguoOgZOkoaVWuKNg/hT1AF+vvxUa8L6VaZYoJW9uTxf5UoaDdOCrqAy
 2twyG3ioLpAMv2NcmNn/qtjEoCt56r4R5NQZOcPbs6TH7Yfd3jcGYOq1T3rMj19Sf3jS
 CFwJDPFawl0ALy9+pHKRyZ0nbcXQZO4eaHgqn/EFiCMcrIEH7GJB16rAcH+R3rbkIwqL
 ZWadGRgNBVuWoCkowErXK473HPRGN72dATrIFSsUsR9OeVFDdlB5ayBOP3aL/dwianX5
 cRCO17gZhajg/Fgz0jJzmXz0S9vaCdKTvb9kyYB3DBha6o7de0BRT8TzF3SJT+2ynR/R
 woDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DlqTGKDatQ39JBp5MaCG8YiZeVo+Zi+HgwYgtcFJ7bM=;
 b=GjuEx2zva3adJAgJXfgrYfwut1bkGcfRHTJU6cVTYREU/UGrHMXyTK3HJiuuwRVeT6
 ryZJNjxXeqWZAXNYjLxYXNXEpskQvd10WFGg9kX0lJI+Gd+IT2cjVHqEdXWLR+2BHQKe
 L3ZHMaOOGhteYEuHbZWeMkA7gXajaxQD1AZTIcy1uHNfCmmSXRDju3zR3g58WLDt7Yad
 iC8oA26Cn8SaGAaAi1XcGM7iX980wFvRTqYjUl0FZEoNU/TItlzncUhOvT9P6HI5h1ay
 OJSbr3IZ0oGHCdW/SIyOv0+4aHmyvG4Y+vp4swufNM6oyP749yOsDePhwROp43tNfdfc
 kYsQ==
X-Gm-Message-State: APjAAAXp1869vDJLc47GS+nDW4K/jnbSFzrwa2gaXxVX9h5OVm23H2fg
 vvqyw5SZurcwdBBvLUNfU08IESQOOOUXkeI59n8=
X-Google-Smtp-Source: APXvYqyig+ODteQZhBcuNLfnk8kQqZ1n49hWxgEP5iwlYTj+3wEOKyrlEHtnCkOS6uAJzNS1YDXiOcAVtIC9MQpRPnk=
X-Received: by 2002:a9d:7498:: with SMTP id t24mr26700822otk.0.1570541503407; 
 Tue, 08 Oct 2019 06:31:43 -0700 (PDT)
MIME-Version: 1.0
References: <1570515056-23589-1-git-send-email-hariprasad.kelam@gmail.com>
In-Reply-To: <1570515056-23589-1-git-send-email-hariprasad.kelam@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 8 Oct 2019 09:31:32 -0400
Message-ID: <CAGngYiX0zoAQB=SEoXfoMm9u_JzHu3eLErj4zmTYtSAoDwkp6Q@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: make use of
 devm_platform_ioremap_resource
To: hariprasad Kelam <hariprasad.kelam@gmail.com>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 8, 2019 at 2:11 AM hariprasad Kelam
<hariprasad.kelam@gmail.com> wrote:
>
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
>
> fix below issues reported by coccicheck
> drivers/staging//fieldbus/anybuss/arcx-anybus.c:135:1-5: WARNING: Use
> devm_platform_ioremap_resource for base
> drivers/staging//fieldbus/anybuss/arcx-anybus.c:248:1-14: WARNING: Use
> devm_platform_ioremap_resource for cd -> cpld_base
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)

Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
Tested-by: Sven Van Asbroeck <TheSven73@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

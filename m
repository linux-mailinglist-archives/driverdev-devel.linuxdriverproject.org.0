Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6279D345F96
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 14:26:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC68E6083A;
	Tue, 23 Mar 2021 13:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjjwWgwzPYOQ; Tue, 23 Mar 2021 13:26:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C74F6082F;
	Tue, 23 Mar 2021 13:26:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA5171BF331
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA51183DD1
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 13:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SvM39UxepkHR for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 13:25:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32D0F83DD0
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 13:25:57 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id ce10so27072283ejb.6
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 06:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8r5MzpqQZUTIbvYW/LPuJYOpz6l5B2Fb8dCOYT8Y2sg=;
 b=f2JK0HdS9o3MqDof967k0R7irtW3xhOyegr0pKgz9Hpkykg4oSxUdp0jNixS6eGEpr
 htBUqvoiCcc0/Qur6LNxMwBwQ53Y1bKctioa4TXjRlCjTTK15/HOjoxrFw/0urILPqPy
 BD/NAGPVq/Y4hH+87+ar4jfSgwsKprImHRAFfoe6tZlOVevHdEGgqH34j6DHcbRONW3B
 2YvBHyXWwW7Iy0eniOQLCXSpZa2zjphK9jwWC5c2yYQ5DYShL5Ppu1V9J9pivdawVOOT
 7gsL9ItE2jAYnWc/82Pep5hBUXLPak+0k74IBj7f944eX88nTOGKhXeFfW/XtZLW8Qnw
 54cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8r5MzpqQZUTIbvYW/LPuJYOpz6l5B2Fb8dCOYT8Y2sg=;
 b=GeOC8fjT7ssy1+HAEEG5QEqAfc890sHrlgtXxGLq1Ho8q1x19q5TEpkgXKbLTYWI5Z
 QnkGiNSGa4lrwjw4h6wjJyPUO4sVaiR7kERCsWSbtYphcEHmTKHTqP7+cVc/9Xid6Y1f
 Es9YwnW8mIRdkVOEATgMq9RJB+rNAkUsA7EfQWwpSLhsgoW2iqk8/WMfjS5DF6lshKgv
 DMLHcUjvhWd+pBRJkHtgodJlrGWTCPgnjeJ++8+YGxyzgC5AgAFCEBO9Bl6i1yjV831f
 8bYTDnqzq6/cfyxcraPDLFCkLMm9iY02JdFC31JxSNqxb/yVNOpyeNg5m7Ai5WtuvkLX
 5yrw==
X-Gm-Message-State: AOAM532g6qVNZcWo//5uVIx5ltWZqNFQ4zrkiscvoHmyXaJw3Vhi/ODa
 xxlNRhNAZhBAfJ5NGfG0IWY=
X-Google-Smtp-Source: ABdhPJziMRsVy7F/9xEITfdmiFRzOzAOEnCYUKPnWhSL+BrmWlTjCaq7uSAUbYiEiwXVTG05rSgkxg==
X-Received: by 2002:a17:906:32d1:: with SMTP id
 k17mr4985190ejk.94.1616505955471; 
 Tue, 23 Mar 2021 06:25:55 -0700 (PDT)
Received: from agape.jhs ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id v15sm12864318edw.28.2021.03.23.06.25.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 06:25:55 -0700 (PDT)
Date: Tue, 23 Mar 2021 14:25:52 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 02/11] staging: rtl8723bs: moved function prototypes out
 of core/rtw_efuse.c
Message-ID: <20210323132551.GK2026@agape.jhs>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <c46e7d7a686988bb6aaea9bc24b15188136e0aed.1616422773.git.fabioaiuto83@gmail.com>
 <20210322192927.GH1717@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322192927.GH1717@kadam>
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
Cc: joe@perches.com, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 apw@canonical.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 10:29:27PM +0300, Dan Carpenter wrote:
> On Mon, Mar 22, 2021 at 03:31:40PM +0100, Fabio Aiuto wrote:
> > fix the following checkpatch issues:
> > 
> > WARNING: externs should be avoided in .c files
> > 35: FILE: drivers/staging/rtl8723bs/core/rtw_efuse.c:35:
> > +bool
> > 
> > moved two function prototypes in include/rtw_efuse.h
> 
> Can't you just make these functions static instead?
> 
> regards,
> dan carpenter
> 

Hi Dan,

sorry for my recent spamming, I forgot to cc you in my
patchset v2 submit.

Thank you,

fabio
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

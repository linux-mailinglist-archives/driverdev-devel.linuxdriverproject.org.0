Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2ED320868
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 06:22:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95CF985F9C;
	Sun, 21 Feb 2021 05:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tayWabOMxd-D; Sun, 21 Feb 2021 05:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2823D85F3D;
	Sun, 21 Feb 2021 05:21:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0432B1BF5A3
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 05:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 00678870C7
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 05:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKHjbwF4dQ7s for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 05:21:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB0B5870A4
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 05:21:53 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id d11so696268plo.8
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 21:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tdDDTC9i/6ye73xcvRlpFEFNsqugG4QfC+jRPvsYSVc=;
 b=p6XXoWknWAlsq+ddQq9GtUXiRZKlib/RN5qL7xAT3mLuw5moASxmLXxVOBpeS5REAZ
 qNZ5DOMfIsHARmZu0pVgMNbsYlOLOo/ppRN/NLmJIJh0ldhHyU9DMvgbuj3BI/zNyKD5
 wk3l0fwgCgv5j2CdoJ4jMgEBSeRfSo0M9P+KbXydiQ2/kHtyLS5xchSeDaJXRpho1M5v
 ouLDflhJbR154x9u2r2iGm+foDTeV1OusYMuUZDI8g6IyBFjLG3qc9kv0TVYrwneyHE1
 56/VDLSpnr6GbI7jxgRwrSttsGyEDHPlK336G1jSQGdGTKuaXZ9XqEeHqQfl4vLfP+Y3
 kkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tdDDTC9i/6ye73xcvRlpFEFNsqugG4QfC+jRPvsYSVc=;
 b=sctp52N/f8QS62+90M57xRaus2x7rrbAvaozGBW/Yld3krTY44FvDDmnb4hZRiZAVt
 KF+0nJsXORyG2iEUdeyBqoVxOONApbRJPOC4jgz2yZRtFb5E6aVSemJg4FdwT6PI8j0i
 mRXaLwDjWCgL1Olbiy67kaY7nGNTu14jF6V9HSlYSEbpn7F9nZJTZe1eYY1sd1TsUNbN
 j5jNW3sKxYztQw6J0w3eYB8imsGZDNcC6UqhKhV8TtoPnLT5KH6BL7Lg5E53ozZ8HlA/
 PzQVdzTYNgcoRofnryJHudzPRFDLlpqh/zbU3cHcN43ydpBp6G26HTtl8EOx7g4RObN4
 EMKg==
X-Gm-Message-State: AOAM533szdn0Rg1eUwqJYKNa/MJPrfCLaSsxobRuS0nzwPdpQC7MhdNU
 s58khWJL/Q3f6m/rUxijWJg=
X-Google-Smtp-Source: ABdhPJzDa83p1tU08hrXoP62X2+urlPl4aLkJM+23Kkbp/uud7LmSKliu8phWsqxdfaQoV+S9FqlXQ==
X-Received: by 2002:a17:902:b583:b029:e3:dc0b:d409 with SMTP id
 a3-20020a170902b583b02900e3dc0bd409mr4659696pls.9.1613884913506; 
 Sat, 20 Feb 2021 21:21:53 -0800 (PST)
Received: from atulu-nitro ([2401:4900:332e:6b18:a11b:5153:f04:2d23])
 by smtp.gmail.com with ESMTPSA id t192sm14820098pgc.54.2021.02.20.21.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 21:21:52 -0800 (PST)
Date: Sun, 21 Feb 2021 10:51:47 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, gregkh@linuxfoundation.org
Subject: Re: [PATCH 1/2] staging: rtl8192e: Pass array value to memcpy
 instead of struct pointer
Message-ID: <20210221052147.GA15671@atulu-nitro>
References: <20210220182154.9457-1-atulgopinathan@gmail.com>
 <674cd5b3-531f-e5a9-b596-f70ccc63d1ad@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <674cd5b3-531f-e5a9-b596-f70ccc63d1ad@embeddedor.com>
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
Cc: tiwai@suse.de, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 20, 2021 at 12:34:15PM -0600, Gustavo A. R. Silva wrote:
> 
> 
> On 2/20/21 12:21, Atul Gopinathan wrote:
> > The variable "info_element" is of the following type:
> > struct rtllib_info_element *info_element
> > 
> > rtllib_info_element is a struct containing the following fields as
> > defined in drivers/staging/rtl8192e/rtllib.h:
> > 
> > struct rtllib_info_element {
> >         u8 id;
> >         u8 len;
> >         u8 data[];
> > } __packed;
> > 
> > The following code of interest (to which this patch applies) is
> > supposed to check if the "info_element->len" is greater than 4 and
> > equal to 6, if this is satisfied then, the last two bytes (the
> > 4th and 5th index of u8 "data" array) are copied into
> > "network->CcxRmState".
> > 
> > Currently the code uses "memcpy()" with the source as
> > "&info_element[4]" which would copy in wrong and unintended
> > information.
> > 
> > This patch rectifies this error by using "&info_element->data[4]" which
> > rightly copies the last two bytes as the required state information.
> 
> You should include a 'Fixes' tag for this.

Sure! Will resend the patches.
I have a doubt about the Fixes tag, the previous commit pertaining to the
lines I'm modifying is a checkpatch.pl fix (found using simple "git blame").
Should I write that as the Fixes <Commit ID>? Or should I write in the
commit id which created that file and hence, that specific line?

git blame -L1960,1980 -- rtllib_rx.c -> returns a single commit which
was a checkpatch fix (1970, is the line my patch-1 modifies)

git log -S'&info_element[4]' -- rtllib_rx.c -> returned the commit which
created the file (the file which my patch-1 modifies)

Which one should I write in the Fixes tag?

Thanks!
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

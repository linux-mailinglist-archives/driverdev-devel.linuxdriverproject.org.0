Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD5F407040
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 19:08:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E1A4606CA;
	Fri, 10 Sep 2021 17:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27zXZOI-pFV4; Fri, 10 Sep 2021 17:07:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3E16606A8;
	Fri, 10 Sep 2021 17:07:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B23041BF83C
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AEF34606A8
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QV1sMb9wqa7o for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 17:07:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BF536065A
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 17:07:45 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id k4so5400863lfj.7
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 10:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=EWy58abE7wQKFwno9NTJgHwAGMTNwSj4jCgL1ep39jk=;
 b=MXe0B6Bs7bWV+hXPkKEIsRw17vUt++zY93S2ZfmvE6hCOVyIjm1I6q5mprr5sHodsg
 0+19z2pi6AHF1iruDzJOJw+bV/W3iPi8U5klm3UHq7N84dRITibT7JPm0OJjpPE1t/ou
 Fwgg/4gucn0zmHTRQ91qtQn/2fGGsajVCmvuWo4cPWX/WZSMARQfQTJiXGC8RmRuPZbV
 sly7AajWjB/xIqmJ8n70mPXKXrZsRq25kGJwNmgSapnuhhNpYajdXY1CIctCcE2Na5jU
 FX3a6owUQUTUdB0U6gvYadadUUnwBqTdoh5aQuSDQJtklfvX8weeoyI/bMX1oZVBa2PM
 m+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=EWy58abE7wQKFwno9NTJgHwAGMTNwSj4jCgL1ep39jk=;
 b=vPn1gJ64fPAlm4tGLJ8oYO7tNsl5rYGCn1IKlJirXt0WnXjjTVvcBLdI2bXB/dvUDR
 kZh8JZ/7fn8gW1BAfYFIHFtuaFXE9Dn5vuMjh2Ar6lFmmTVLj0A0w7iOq6prfou8tF4X
 IAQopvo9IwfNJL7+ddOQL+TcRJbaq+1VyQ+tTXrYiZ7Hj2J2H/N5oa+oZsvyYtU7jTgM
 YReqtR1WeJCkV0MhoHgqjpLAyCIf57a8w7iAX1gzBv5EWycby57KFY7U63d5CxgAbnaM
 3+B/saN1F/3EkTwtncuG+c0sEkrLjjydQn8OU9RKTMj43kLgLP9nb2f34wqf3ZvXvXVi
 STFg==
X-Gm-Message-State: AOAM531ZJ8z2w9FG7/lUBYiJ0qMWcUOCmQt0e3zDNeFr+B/RVdyfM0ZK
 xW9OPEyyYDDX9JzsYFmqvdY=
X-Google-Smtp-Source: ABdhPJxcgZIUm8EBfkLeTuXnSAKfX4Qaa+sHl2gIh5zQVgZOEOxvPB0UD2BIZBjw8SkBg9whkejIBQ==
X-Received: by 2002:a05:6512:22cc:: with SMTP id
 g12mr4692860lfu.456.1631293663389; 
 Fri, 10 Sep 2021 10:07:43 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id z5sm653402lfu.50.2021.09.10.10.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 10:07:43 -0700 (PDT)
Date: Fri, 10 Sep 2021 20:07:41 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 00/31]  [PATCH 00/31] staging/wfx: usual maintenance
Message-ID: <20210910170741.qzl6qwbhxdz5o2hq@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 10, 2021 at 06:04:33PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Hi,
> =

> The following PR contains now usual maintenance for the wfx driver. I have
> more-or-less sorted the patches by importance:
>     - the first ones are fixes for a few corner-cases reported by users
>     - the patches 9 and 10 add support for CSA and TDLS
>     - then the end of the series is mostly cosmetics and nitpicking

Nicely formated patch series. Should be pretty easy to review. I just
check for fast eyes. But overall nice clean up series.

> =

> I have wait longer than I initially wanted before to send this PR. It is
> because didn't want to conflict with the PR currently in review[1] to
> relocate this driver into the main tree. However, this PR started to be
> very large and nothing seems to move on main-tree side so I decided to not
> wait longer.
> =

> Kalle, I am going to send a new version of [1] as soon as this PR will be
> accepted. I hope you will have time to review it one day :-).
> =

> [1] https://lore.kernel.org/all/20210315132501.441681-1-Jerome.Pouiller@s=
ilabs.com/
> =

> J=E9r=F4me Pouiller (31):
>   staging: wfx: use abbreviated message for "incorrect sequence"
>   staging: wfx: do not send CAB while scanning
>   staging: wfx: ignore PS when STA/AP share same channel
>   staging: wfx: wait for SCAN_CMPL after a SCAN_STOP
>   staging: wfx: avoid possible lock-up during scan
>   staging: wfx: drop unused argument from hif_scan()
>   staging: wfx: fix atomic accesses in wfx_tx_queue_empty()
>   staging: wfx: take advantage of wfx_tx_queue_empty()
>   staging: wfx: declare support for TDLS
>   staging: wfx: fix support for CSA
>   staging: wfx: relax the PDS existence constraint
>   staging: wfx: simplify API coherency check
>   staging: wfx: update with API 3.8
>   staging: wfx: uniformize counter names
>   staging: wfx: fix misleading 'rate_id' usage
>   staging: wfx: declare variables at beginning of functions
>   staging: wfx: simplify hif_join()
>   staging: wfx: reorder function for slightly better eye candy
>   staging: wfx: fix error names
>   staging: wfx: apply naming rules in hif_tx_mib.c
>   staging: wfx: remove unused definition
>   staging: wfx: remove useless debug statement
>   staging: wfx: fix space after cast operator
>   staging: wfx: remove references to WFxxx in comments
>   staging: wfx: update files descriptions
>   staging: wfx: reformat comment
>   staging: wfx: avoid c99 comments
>   staging: wfx: fix comments styles
>   staging: wfx: remove useless comments after #endif
>   staging: wfx: explain the purpose of wfx_send_pds()
>   staging: wfx: indent functions arguments
> =

>  drivers/staging/wfx/bh.c              |  33 +++----
>  drivers/staging/wfx/bh.h              |   4 +-
>  drivers/staging/wfx/bus_sdio.c        |   8 +-
>  drivers/staging/wfx/bus_spi.c         |  22 ++---
>  drivers/staging/wfx/data_rx.c         |   7 +-
>  drivers/staging/wfx/data_rx.h         |   4 +-
>  drivers/staging/wfx/data_tx.c         |  87 +++++++++--------
>  drivers/staging/wfx/data_tx.h         |   6 +-
>  drivers/staging/wfx/debug.c           |  54 ++++++-----
>  drivers/staging/wfx/debug.h           |   2 +-
>  drivers/staging/wfx/fwio.c            |  26 ++---
>  drivers/staging/wfx/fwio.h            |   2 +-
>  drivers/staging/wfx/hif_api_cmd.h     |  14 +--
>  drivers/staging/wfx/hif_api_general.h |  25 ++---
>  drivers/staging/wfx/hif_api_mib.h     |  85 ++++++++--------
>  drivers/staging/wfx/hif_rx.c          |  23 ++---
>  drivers/staging/wfx/hif_rx.h          |   3 +-
>  drivers/staging/wfx/hif_tx.c          |  61 +++++-------
>  drivers/staging/wfx/hif_tx.h          |   6 +-
>  drivers/staging/wfx/hif_tx_mib.c      |  14 +--
>  drivers/staging/wfx/hif_tx_mib.h      |   2 +-
>  drivers/staging/wfx/hwio.c            |   6 +-
>  drivers/staging/wfx/hwio.h            |  20 ++--
>  drivers/staging/wfx/key.c             |  30 +++---
>  drivers/staging/wfx/key.h             |   4 +-
>  drivers/staging/wfx/main.c            |  39 +++++---
>  drivers/staging/wfx/main.h            |   3 +-
>  drivers/staging/wfx/queue.c           |  43 ++++----
>  drivers/staging/wfx/queue.h           |   6 +-
>  drivers/staging/wfx/scan.c            |  55 +++++++----
>  drivers/staging/wfx/scan.h            |   4 +-
>  drivers/staging/wfx/sta.c             | 135 +++++++++++++++-----------
>  drivers/staging/wfx/sta.h             |   8 +-
>  drivers/staging/wfx/traces.h          |   2 +-
>  drivers/staging/wfx/wfx.h             |  14 ++-
>  35 files changed, 457 insertions(+), 400 deletions(-)
> =

> -- =

> 2.33.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

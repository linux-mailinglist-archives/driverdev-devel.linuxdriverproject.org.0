Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5E72873F6
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 14:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D63686C19;
	Thu,  8 Oct 2020 12:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FA2X+mDdMG28; Thu,  8 Oct 2020 12:23:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75C9D86B9E;
	Thu,  8 Oct 2020 12:23:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BEE81BF473
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 12:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4825A87458
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 12:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XcMv54CKTJZr for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 12:23:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
 [209.85.217.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FA07873CF
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 12:23:23 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id r1so1899378vsi.12
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 05:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6yaLQlxNw70bRGmpr47sIPOg0JWUbIqHrAviNgxR9U8=;
 b=ZV/udlGzIl/jBrUJkuN1KwkLbErRiww1AXfbdYjhu4aftSNTMtV4+PM1BRjHauZxfp
 HbtfbtxaCjWO7kt3kz8IqDCxFVt6zufkjs0R5JcP1kz9I5bfIyMblsiuAEvsfk4IJitP
 k7F6hH3KcaYkZgb85VTdANYMENGpTOqykJwHPOTx+/h7Lk61QKg66tm/uB+lty3qHwiW
 GEqGpwFCwllORWVB21LnPAoTOZk+p4jhax1BUnlUQoHo1whWYCl7pItcKd+vz4XSCK5I
 gNwxPHcFXodJUNDYPYp7haWTvUmJiATg0vIwrH1GHoNVL4t1C2nyWafuHOFtVW9XD5+C
 tTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6yaLQlxNw70bRGmpr47sIPOg0JWUbIqHrAviNgxR9U8=;
 b=DjXq6YBr9+a5St9ze1nMrK+1K0C+yBdwe/Eh449DZkbu6nBl1tohF/hqjp/7wnlK6d
 8rZsoA3YmZw0iGB6oPmKqvt1jPjHDGRyx05LFufIJw/9PeWJF1d5271pCm1vkyE2FOT0
 qHJNmYUuQeHy/88V0WEGi+qih1hj4MQPy3yV2zWV6d+EBtBMD9ljyRcvNa8UD33X0TuG
 S/eE6uq3e8nv7zCfnRp2C1fPx6IBGpipdgGk0YMP5xr5m8fqWwq/CHNOPs6iUC6hUMR8
 d90SrXLu1y3H9TzeHK9pf653AHOCYGYN6lZOd9ORMoJ6BJykDB8sCX68KFrPdv6drvn7
 /Rnw==
X-Gm-Message-State: AOAM530gQSTxiKe3o6n20Juua8g1minrvIKK/3k454fzMQgIl0VCHiTB
 rCyv4m/aFotRV6l6/SncZFebcMGOZ3s=
X-Google-Smtp-Source: ABdhPJwa//Cuxlg8J9hnKb2D4RLSjkuCxyHWwu5Oq+Qe+Yq7hHTRVeyD8Uwen+tq3LPd95bdvjg4iA==
X-Received: by 2002:a05:6102:7a3:: with SMTP id
 x3mr4452285vsg.12.1602159802162; 
 Thu, 08 Oct 2020 05:23:22 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com.
 [209.85.217.52])
 by smtp.gmail.com with ESMTPSA id c17sm533466vke.38.2020.10.08.05.23.20
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Oct 2020 05:23:21 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id s15so2943277vsm.0
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 05:23:20 -0700 (PDT)
X-Received: by 2002:a67:d84:: with SMTP id 126mr4218029vsn.51.1602159800489;
 Thu, 08 Oct 2020 05:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
In-Reply-To: <20201008115808.91850-2-coiby.xu@gmail.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Thu, 8 Oct 2020 08:22:44 -0400
X-Gmail-Original-Message-ID: <CA+FuTSdEK+0nBCd5KAYpbEECmSvjoMEgcEOtM+ZKFF4QQKuAfw@mail.gmail.com>
Message-ID: <CA+FuTSdEK+0nBCd5KAYpbEECmSvjoMEgcEOtM+ZKFF4QQKuAfw@mail.gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
To: Coiby Xu <coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 8, 2020 at 7:58 AM Coiby Xu <coiby.xu@gmail.com> wrote:
>
> Initialize devlink health dump framework for the dlge driver so the
> coredump could be done via devlink.
>
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>

> @@ -4556,6 +4559,13 @@ static int qlge_probe(struct pci_dev *pdev,
>         struct ql_adapter *qdev = NULL;
>         static int cards_found;
>         int err = 0;
> +       struct devlink *devlink;
> +       struct qlge_devlink *ql_devlink;
> +
> +       devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
> +       if (!devlink)
> +               return -ENOMEM;
> +       ql_devlink = devlink_priv(devlink);
>
>         ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
>                                  min(MAX_CPUS,

need to goto devlink_free instead of return -ENOMEM here, too.

> @@ -4614,6 +4624,16 @@ static int qlge_probe(struct pci_dev *pdev,
>                 free_netdev(ndev);
>                 return err;

and here

>         }
> +
> +       err = devlink_register(devlink, &pdev->dev);
> +       if (err) {
> +               goto devlink_free;
> +       }
> +
> +       qlge_health_create_reporters(ql_devlink);
> +       ql_devlink->qdev = qdev;
> +       ql_devlink->ndev = ndev;
> +       qdev->ql_devlink = ql_devlink;
>         /* Start up the timer to trigger EEH if
>          * the bus goes dead
>          */
> @@ -4624,6 +4644,10 @@ static int qlge_probe(struct pci_dev *pdev,
>         atomic_set(&qdev->lb_count, 0);
>         cards_found++;
>         return 0;
> +
> +devlink_free:
> +       devlink_free(devlink);
> +       return err;
>  }
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

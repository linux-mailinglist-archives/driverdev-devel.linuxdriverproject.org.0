Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB262A481
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 14:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 189C322851;
	Sat, 25 May 2019 12:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ail0dVvINE3W; Sat, 25 May 2019 12:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72D582282E;
	Sat, 25 May 2019 12:59:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9C051BF291
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 12:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD434863E0
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 12:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8LGFzICL9ZE1 for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 12:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F988863DD
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 12:59:20 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id n14so11135663otk.2
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 05:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BtQTuMfATWXiK2KsTqvrmBV015lDA1qcyuiicuIi0vA=;
 b=RMDw8eSGj+mSLywZgF2YVM3V88/obPnHf2Y5qE2tGnMQuxg1KUitGTXqbpra8UAY4F
 iL/9EKNFEx/t65gZ1+iyTD9zo28S0oIcIU8sXqEb/fCAFW4glZK+vr0Ymdy9svKSeG1r
 n4F4Zn+SDVawAjeSnJvFXqdzOo6kGBWyrYfZZMAWAAQhQ/SIv5SyeJ/ct7zThVxeb2yQ
 vQ+CB16LyQNs4QTbiSQbYAraZAqaZbTd981NeyrlS3Z9bMlr8FKcLh+/3PBQuJ0+oEBY
 DmrkqjWhRjoMbnseUHKTFHKghbplHnpXkexkHyWSaa4Tl5d4d7eX/JPnZ0LFWKAZNXdy
 T8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BtQTuMfATWXiK2KsTqvrmBV015lDA1qcyuiicuIi0vA=;
 b=EL2FiRdEFIcISgWKZOdWumBmeGQ+zydcf0yyf2+dNGuMMdIfGl3xjb0X96qdCd7O7Y
 UsgNdB8KS7x+eoj+lTVJuli5wvYHMslOo/nlFrrGwTVamDqGZM0fes8tB5/lIEkW2aFM
 Xww/RCtkmYnlD+HX4l9YQyYa7MNclVzsXImvIQ826zWbMRGg8KDiM2QgR87sLuyvp4ke
 6F7a0PPLmm0O2rEXXDZBWXKz2qL/9WWD2ck0ITKWsagPKm8EViG9CfABQbwRSus2IbS4
 1O8OQOlRxEh7UXfRCpaZ14GUAlGXEvDBcLy9mEp2bwf/CXDrkUGjdzWmO+Y2gQwYrUr9
 Q5eQ==
X-Gm-Message-State: APjAAAUBiGk31eM6GPrevfcnODf+Qdu+YCbEc5mm7EvudKqjioY4plOo
 o4a7YyBZXF1Hzxf+fU7VS59XFPMXOcy8wzmpEw8=
X-Google-Smtp-Source: APXvYqyOxYb9KGXupIouUlbnXLWlQ3BdKVA8gjHY4z+gTj3DWLA44KWiOPwIW9eLNLODIq5iS6L/1oncgUFQX9wbIDs=
X-Received: by 2002:a9d:12f2:: with SMTP id
 g105mr50298032otg.116.1558789159170; 
 Sat, 25 May 2019 05:59:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190525042642.78482-1-maowenan@huawei.com>
In-Reply-To: <20190525042642.78482-1-maowenan@huawei.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sat, 25 May 2019 08:59:08 -0400
Message-ID: <CAGngYiX04W+-jxqnWUD6CLh8LAr61FhtADGM0zbGcdeArqzC-Q@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5BPATCH_net=5D_staging=3A_Remove_set_but_not_used_var?=
 =?UTF-8?Q?iable_=E2=80=98status=E2=80=99?=
To: Mao Wenan <maowenan@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 25, 2019 at 12:20 AM Mao Wenan <maowenan@huawei.com> wrote:
>
> The variable 'status' is not used any more, remve it.

>      /* do the transfers for this message */
>      list_for_each_entry(transfer, &m->transfers, transfer_list) {
>          if (transfer->tx_buf == NULL && transfer->rx_buf == NULL && transfer->len) {
> -            status = -EINVAL;
>              break;
>          }

This looks like an error condition that's not reported to the spi core.

Instead of removing the status variable (which also removes the error value!),
maybe this should be reported to the spi core instead ?

Other spi drivers appear to do the following on the error path:
m->status = status;
return status;

>
> @@ -370,7 +368,6 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
>
>              if (count != transfer->len) {
> -                status = -EIO;
>                  break;

Same issue here.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

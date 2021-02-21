Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A373320BE1
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 17:57:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF7BB870C4;
	Sun, 21 Feb 2021 16:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uDCf4nrto+dr; Sun, 21 Feb 2021 16:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D9938709F;
	Sun, 21 Feb 2021 16:57:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D24F41BF29E
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 16:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE2866E987
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 16:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6jRNVHx76HA for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 16:57:30 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id DA19A6F478; Sun, 21 Feb 2021 16:57:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 963BB6E987
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 16:57:29 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id t29so5069603pfg.11
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 08:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=B9cs96qNn/BeukNEOSHYwqQI5Bj2awUMTvneDxh78vM=;
 b=RIJBhiNzg9f0xT4DSNmlxIQgvreGmdXvKswmbFltyAnWrrdd6cGcdaJEqtP8TJk78Q
 o76k9/bbe8lldi2Wg3Zz+sLbp4AbAxCTInkhydh81RjkCVvKLA11CDWMAacSeCX6PcLQ
 mw1lC+p7tuZet02I15TF7yuEmv+AQKrFyaeqPltP6XKVO7w/GRssM9cC5GWdzTj0cFf4
 922aGSnTYtzH2NsQRYGHCoC/IzKbaX11LN2Uq4LD0Gz3oJbv+vQUtfOATlqm7IAUsfHC
 yniZ/Yynt8Vl+/0ZAN+PVeVarHCrtpZg1VIidLtCN7dlAC5xu4YMZaeqP5PFFfzONiHU
 sSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B9cs96qNn/BeukNEOSHYwqQI5Bj2awUMTvneDxh78vM=;
 b=qXkTNLbH3Onq5Q3TPcUVpXo445ZUlXVpKn62f5ZD1oPhyCg4EL0HaQeCF92SwK1dLQ
 eo6JJ6nYj3U96/THkP2iqrCdJNgmXSpwWkzxLw+y0bL3rcbM6B74x9h9/tzlZdBxnLHN
 doNuZiVSEwAbNDRaAn1eHNtpOOm5U4g3DVCKHa1CrsNajf5517WXS2u9HRGNopTYqnlj
 tqSF6rUQyuTyubiDwMgDC3kIes2DZvBElvmb5l9cVWFHqDiY9XPMzUO+DvLSIX82puVI
 O7Y2WWYFiVe5P+E6FqpfhW8GqmeE3Tm3zZwOFNqDkjFJw7PyAby40AXldXlyZpli/4gG
 V18Q==
X-Gm-Message-State: AOAM530T8TJ5rmPLuZxyS+LND/J1yymIarxwxXZdRyHbSztbZv/YLYqz
 OcUCWGNIMlQ4wi6q142H+fU=
X-Google-Smtp-Source: ABdhPJyiDqocVAb33lqs+xYHkZf2tI/kwEbn303at+l8JlJYnJpj9iVx20WqlM6nqmSDt59dLpJ6Xg==
X-Received: by 2002:aa7:9d9b:0:b029:1ed:6c08:b93c with SMTP id
 f27-20020aa79d9b0000b02901ed6c08b93cmr6544126pfq.37.1613926648929; 
 Sun, 21 Feb 2021 08:57:28 -0800 (PST)
Received: from atulu-nitro ([2401:4900:3155:5620:9c4f:6a05:4186:f552])
 by smtp.gmail.com with ESMTPSA id v16sm15310543pfu.76.2021.02.21.08.57.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 08:57:28 -0800 (PST)
Date: Sun, 21 Feb 2021 22:27:21 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: rtl8192e: Change state information from u16
 to u8
Message-ID: <20210221165721.GA10040@atulu-nitro>
References: <20210220182154.9457-1-atulgopinathan@gmail.com>
 <20210220182154.9457-2-atulgopinathan@gmail.com>
 <YDJbSgqTpBpIsbVB@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDJbSgqTpBpIsbVB@kroah.com>
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
Cc: tiwai@suse.de, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 02:08:26PM +0100, Greg KH wrote:
> On Sat, Feb 20, 2021 at 11:51:55PM +0530, Atul Gopinathan wrote:
> > The "CcxRmState" field in struct "rtllib_network" is defined
> > as a u16 array of size 2 (so, 4 bytes in total).
> > 
> > But the operations performed on this array throughout the code
> > base (in rtl8192e/) are all in byte size 2 indicating that this
> > array's type was defined wrongly.
> > 
> > There are two situation were u16 type of this field could yield
> > incorrect behaviour:
> > 
> > 1. In rtllib_rx.c:1970:
> > memcpy(network->CcxRmState, &info_element->data[4], 2);
> > 
> > Here last 2 bytes (index 4 and 5) from the info_element->data[]
> > array are meant to be copied into CcxRmState[].
> > Note that "data" array here is an array of type u8.
> > 
> > 2. In function "update_network()" in staging/rtl8192e/rtllib_rx.c:
> > memcpy(dst->CcxRmState, src->CcxRmState, 2);
> > 
> > Here again, only 2 bytes are copied from the source state to
> > destination state.
> > 
> > There are no instances of "CcxRmState" requiring u16 data type.
> > Here is the output of "grep -IRn 'CcxRmState'" on the rtl8192e/
> > directory for reviewing:
> > 
> > rtllib_rx.c:1970:			memcpy(network->CcxRmState, &info_element->data[4], 2);
> > rtllib_rx.c:1971:			if (network->CcxRmState[0] != 0)
> > rtllib_rx.c:1975:			network->MBssidMask = network->CcxRmState[1] & 0x07;
> > rtllib_rx.c:2520:	memcpy(dst->CcxRmState, src->CcxRmState, 2);
> > rtllib.h:1108:	u8	CcxRmState[2];
> 
> You just changed the logic in line 1975 in that file, right?  Are you
> _SURE_ that is ok?  Do you have a device to test this on?

I'm sorry, I didn't quite get you. By line 1975 in rtllib_rx.c, did you mean
the following line?:

network->MBssidMask = network->CcxRmState[1] & 0x07;

network->CcxRmState is being fed with 2 bytes of u8 data, in line 1970 (as
seen above). I believe my patch doesn't change the logic of an "&" operation
being performed on it with 0x07, right?

(I'm sorry if I'm missing something quite obvious, could kindly elaborate
the change in logic that you are referring to?)

Many thanks for the reviewing it during this time!
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

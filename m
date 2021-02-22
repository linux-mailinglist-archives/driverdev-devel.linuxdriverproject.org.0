Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AB6321E00
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 18:23:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C698B85FC9;
	Mon, 22 Feb 2021 17:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gP6Lj_WVMos; Mon, 22 Feb 2021 17:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 961008600D;
	Mon, 22 Feb 2021 17:23:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 106071BF981
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 17:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F36D26F510
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 17:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 42rMSPRX2fLC for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 17:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6BAC6F487
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 17:23:39 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id k22so8154815pll.6
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 09:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DUHGntaKFYzrq7NZkx3mWcd1ZCuicESk7vii1Ds1bwQ=;
 b=rx5gkdRFqp9yhSb7+6RWUSzvNoBfPNu5d27yhXnbQJDAoKap+icxeZ4adyPk0oRhAA
 4j2d14G7xHkTJD9npx6E1UZ+BgeP9soxBveDiTuQ0lWQKmiTRFncVcvkfJdNWkaw3MvE
 GJbPWHtzxs1htljhabPzgO9rDiPDwd0dcw8hHXoLVCGsVcMiXJ6G8XFjViQ5Jz227dZt
 eF3nZCMt6bDlzQ1P6Gd/cSCZYIpUPb/zICoOS87ZIWemV58Ma38mxRQ/AsrrmhF45FKZ
 06WQeDNHEO/e7nXcbStjdCDgxwfVdWEZAFphOcdgTGwwRcNtkeklhFq7IKrUfjGvc3n9
 bEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DUHGntaKFYzrq7NZkx3mWcd1ZCuicESk7vii1Ds1bwQ=;
 b=CB1qm4FJj+zruBLXOnOpID9eOKqN/kaO+riH7C0RAd9C77m1jFccT9lerHKgDfnom4
 kotCvt8HXaMUTOMckG9DJG+bLJIbEmVNY6KHpT2KwfQq2TtHEdnK66D8uGveCqopLEwE
 IhIwlrgBbcqm76DguDAfQi0HYUjjio1ifTK8+AxJ08VJp981fIVY4+CZ4z6DxizsStUB
 3K3TVNH3ewz0X6XO+GmDgVnMg98ZbsHqj8RCwfU9W6hXyaDRrI7p01u71JYSzj/HdqW4
 wkXaL2oROVglwNoeFKXzFyAePLOE6+SEvRvoz3apuqFpo41mo9u4V7vzUcLqfSirjY5N
 bISw==
X-Gm-Message-State: AOAM533ZKtfJB+SKLqrA94uci3gqcDmr9wvGLuWh0vMINGQ1q3qZlGC0
 crtfIRAqmHk4ronmAREeLUA=
X-Google-Smtp-Source: ABdhPJwkqR0nooNiBJVEp5Xxrif3+NWqYOdkzYMEOKJhg6OpIGXa6RgbvwDSdBvgXRNZZJIMlbKKrQ==
X-Received: by 2002:a17:90a:602:: with SMTP id
 j2mr24221506pjj.65.1614014617069; 
 Mon, 22 Feb 2021 09:23:37 -0800 (PST)
Received: from atulu-ubuntu ([27.61.20.212])
 by smtp.gmail.com with ESMTPSA id t15sm19044867pjy.37.2021.02.22.09.23.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 09:23:36 -0800 (PST)
Date: Mon, 22 Feb 2021 22:53:30 +0530
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: rtl8192e: Change state information from u16
 to u8
Message-ID: <20210222172330.GA2507@atulu-ubuntu>
References: <20210220182154.9457-1-atulgopinathan@gmail.com>
 <20210220182154.9457-2-atulgopinathan@gmail.com>
 <YDJbSgqTpBpIsbVB@kroah.com> <20210221165721.GA10040@atulu-nitro>
 <YDPNKTHZqaS37XPe@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDPNKTHZqaS37XPe@kroah.com>
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

On Mon, Feb 22, 2021 at 04:26:33PM +0100, Greg KH wrote:
> On Sun, Feb 21, 2021 at 10:27:21PM +0530, Atul Gopinathan wrote:
> > On Sun, Feb 21, 2021 at 02:08:26PM +0100, Greg KH wrote:
> > > On Sat, Feb 20, 2021 at 11:51:55PM +0530, Atul Gopinathan wrote:
> > > > The "CcxRmState" field in struct "rtllib_network" is defined
> > > > as a u16 array of size 2 (so, 4 bytes in total).
> > > > 
> > > > But the operations performed on this array throughout the code
> > > > base (in rtl8192e/) are all in byte size 2 indicating that this
> > > > array's type was defined wrongly.
> > > > 
> > > > There are two situation were u16 type of this field could yield
> > > > incorrect behaviour:
> > > > 
> > > > 1. In rtllib_rx.c:1970:
> > > > memcpy(network->CcxRmState, &info_element->data[4], 2);
> > > > 
> > > > Here last 2 bytes (index 4 and 5) from the info_element->data[]
> > > > array are meant to be copied into CcxRmState[].
> > > > Note that "data" array here is an array of type u8.
> > > > 
> > > > 2. In function "update_network()" in staging/rtl8192e/rtllib_rx.c:
> > > > memcpy(dst->CcxRmState, src->CcxRmState, 2);
> > > > 
> > > > Here again, only 2 bytes are copied from the source state to
> > > > destination state.
> > > > 
> > > > There are no instances of "CcxRmState" requiring u16 data type.
> > > > Here is the output of "grep -IRn 'CcxRmState'" on the rtl8192e/
> > > > directory for reviewing:
> > > > 
> > > > rtllib_rx.c:1970:			memcpy(network->CcxRmState, &info_element->data[4], 2);
> > > > rtllib_rx.c:1971:			if (network->CcxRmState[0] != 0)
> > > > rtllib_rx.c:1975:			network->MBssidMask = network->CcxRmState[1] & 0x07;
> > > > rtllib_rx.c:2520:	memcpy(dst->CcxRmState, src->CcxRmState, 2);
> > > > rtllib.h:1108:	u8	CcxRmState[2];
> > > 
> > > You just changed the logic in line 1975 in that file, right?  Are you
> > > _SURE_ that is ok?  Do you have a device to test this on?
> > 
> > I'm sorry, I didn't quite get you. By line 1975 in rtllib_rx.c, did you mean
> > the following line?:
> > 
> > network->MBssidMask = network->CcxRmState[1] & 0x07;
> 
> Yes.
> 
> > network->CcxRmState is being fed with 2 bytes of u8 data, in line 1970 (as
> > seen above). I believe my patch doesn't change the logic of an "&" operation
> > being performed on it with 0x07, right?
> 
> It changes the location of the [1] operation to point to a different
> place in memory from what I can tell, as you changed the type of that
> array.

Oh yes, earlier, the network->CcxRmState[] array had memory locations as:
[x, x+16]. With this patch, it's locations are [x, x+8].

And I strongly believe this is how it should be based on how the original
author is using the CcxRmState[] array throughout the codebase:

Allow me to explain (Based on the output of "grep -IRn 'CcxRmState'" that
I sent previously):
1. At line 1970:

    memcpy(network->CcxRmState, &info_element->data[4], 2);

this is where the array CcxRmState[] is being fed with
data. And one can see the source is an array named "data" which itself
has type u8. The third argument is "2", meaning 2 bytes of data should
be written from "data" array to "CcxRmState".

Also note that, the array CcxRmState has a size 2, as defined in
rtllib.h, in struct "rtllib_network":

    u16 CcxRmState[2];

Say if CcxRmState[] _was_ supposed to be u16 and not u8, then both elements
of the source "data" array will only be written into the first element of
"CcxRmState", i.e, "CcxRmState[0]". The 2nd element, "CcxRmState[1]" will
never be fed with any data. The resultant CcxRmState[] array would look
something like this:

    [(u8-data and u8-data squashed), 0].

The 2 u8-data here refers to info_element->data[4] and
info_element->data[5].

Instead, if "CcxRmState" was of type u8, then both elements of source
"data" array will be written into the 2 elements of "CcxRmState"
respectively:

    [u8 data, u8 data]

This makes a lot more sense.

2. Line 1975:
    network->MBssidMask = network->CcxRmState[1] & 0x07;

With point 1 clear, it should now be easy to understand that
the the "&" operation in line 1975, will _always_ yield 0 if "CcxRmState"
is u16, simply because CcxRmState[1] is never fed with any data at
all.

Oh and "network->MBssidMask" is also of type u8.

3. Line 2520:
memcpy(dst->CcxRmState, src->CcxRmState, 2);

2 bytes, and not 4, again.:D
The above line belongs to the following function:

    static inline void update_network(struct rtllib_device *ieee,
                      struct rtllib_network *dst,
                      struct rtllib_network *src)

As you can see, there is "dst" destination and a "src" source. The author
is essentially copying all the data from "src" to "dst" in this function.
Throughout the function, "memcpy()" is being used several times to copy
the data of all arrays/structs existing in "src" into "dst". In each
of those instances, the author is making sure to copy the entirety of
the respective struct/array by passing all used up size of the struct/
array in the third, size, argument. Here are a few lines from that
function (posting the entire function defintion would be inappropriate)

	instance 1: memcpy(dst->hidden_ssid, src->ssid, src->ssid_len);
        instance 2: memcpy(&dst->stats, &src->stats, sizeof(struct rtllib_rx_stats));
        instance 3: memcpy(&dst->tim, &src->tim, sizeof(struct rtllib_tim_parameters));
        instance 4: memcpy(dst->wzc_ie, src->wzc_ie, src->wzc_ie_len);

There are a LOT more instances, here is the elixir link to that
function for a quick reference:
https://elixir.bootlin.com/linux/v5.11/source/drivers/staging/rtl8192e/rtllib_rx.c#L2420

My point is, it's clear that the intent of this function is to duplicate
the data of src into dst. If "CcxRmState" really is supposed to be u16,
then why only write down the first 2 bytes into "dst->CcxRmState"?

What about "dst->CcxRmState[1]"? It never gets any value, again.

These are the only places where CcxRmState is being used in the entire
rtl8192e driver directory. I skipped line 1971 as it just checks whether
"CcxRmState[0]" is 0 or not, this should not require any explanation.


Thank you for your patience!
Atul
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

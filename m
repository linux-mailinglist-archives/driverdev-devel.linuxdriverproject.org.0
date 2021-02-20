Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0FD32054F
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 13:28:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39BF586C2F;
	Sat, 20 Feb 2021 12:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gWAbg22Atypn; Sat, 20 Feb 2021 12:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 292DB86B68;
	Sat, 20 Feb 2021 12:28:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E20E61BF2C6
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:28:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DED29870F2
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:28:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gQYBwZh1+aWk for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 12:28:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 85A57870F0
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 12:28:43 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id o7so7112556pgl.1
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 04:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ESd3043vocdc8o+OeJoJOtt6T7G5G9i+TGIhSY83bdM=;
 b=O7Xx0RKI+1/JnOfIoVGJmtCZwf+0Dp1zFYpyjiykwhuswrHpx+VuGiIaWUBeM1wImv
 e55KOygqLjHSqdLw2E5CgVBLia9d6uQljC3yBaYSPohHIisNTPuNCjE2F3R6l+KyFl+4
 yho+e/fwHKoALn6uH48VKxBVTDgnSjqKEusOVX/dxRyx0fcvyG66VoWRIxVav3yfTVsJ
 wUhpILcIrKbVBz01Q1dIhKSLEiSoWUmTtUu9cqBF5HO3ASK4GoHS1EXdwrnYqcU4hZ7P
 dmoUt/pAjrPBv0qKJqzX05uaWnPDfWRHuYChI6BB76v4EZNl7GzPcXzNJo2tkMUmx15a
 XEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ESd3043vocdc8o+OeJoJOtt6T7G5G9i+TGIhSY83bdM=;
 b=lqMzyuBRmXkKVYFuvzey2Hvql5qQsLh62bY8UIk1WjkZ56IyZjL4XK6VnzRCyHVmR2
 Cm5KgmGb+YBKsnv6BFf7Rm9Nk7NOyYYhpVqx1H4TuqsbLXAwjmOznnmiq1q+U7ToU/g0
 E1nWRufZqqiE5HAtXODkDZeQMGX0BDlFanZw2SJ5b3XfCFTZcVx0u8r6cRLDsThmq9Qr
 1t3HLEeEm1+rJrJoZb8WpO3P7VJ3iMiAR+eRjayj63tCPv2sd5cdtQNZap/8MF8e8VX0
 +WrtuTaL9rOI75km7R9ss4IhTCrpeeA4ykR6S+LuezMg4nssmAV8B/tKTMB27m/TLS4w
 MM+g==
X-Gm-Message-State: AOAM5306qilcY6gbF5Iyv5wcfjvbHw8H1mU8Ps8lz+z9rb4xzM3UtZ2k
 kh4rSqZ8s0GCwb5cidckLA68GyX7pnlHqI/cwh0=
X-Google-Smtp-Source: ABdhPJzjFC7oBDbOFW0hddXcBIOMRD9hX84QPMywDHk0Wxq+Q2yBnPOkRI4xvJPZXsuSAmDyK6kvSA==
X-Received: by 2002:a63:f156:: with SMTP id o22mr12664617pgk.384.1613824123064; 
 Sat, 20 Feb 2021 04:28:43 -0800 (PST)
Received: from ?IPv6:2409:4064:2e1c:74bc:95c:a666:3473:ade0?
 ([2409:4064:2e1c:74bc:95c:a666:3473:ade0])
 by smtp.gmail.com with ESMTPSA id x15sm11873597pjq.47.2021.02.20.04.28.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 20 Feb 2021 04:28:42 -0800 (PST)
Subject: Re: [PATCH] staging: wimax: i2400m: add space before open parenthesis
To: Greg KH <gregkh@linuxfoundation.org>
References: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
 <YDDuu6sRtSfWhnbY@kroah.com>
From: RajMAIN <sssraj.sssraj@gmail.com>
Message-ID: <5dbde654-386b-2011-0020-729e41043f45@gmail.com>
Date: Sat, 20 Feb 2021 17:58:35 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YDDuu6sRtSfWhnbY@kroah.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, sfr@canb.auug.org.au,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 20-02-2021 16:42, Greg KH wrote:
> On Sat, Feb 20, 2021 at 02:48:16AM -0800, Rajesh Kumbhakar wrote:
>> netdev.c
> Why is this here?

You mean that filename? I thought I should mention it. Should I remove 
it and resubmit?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B12EA55E15
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 04:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CD6B867D0;
	Wed, 26 Jun 2019 02:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7E1La0z0zuDf; Wed, 26 Jun 2019 02:03:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A17D86354;
	Wed, 26 Jun 2019 02:03:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02B871BF2C1
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F32D02107D
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNnGZXUm-965 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 02:02:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 79E5520BF9
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 02:02:58 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75E0A2147A;
 Wed, 26 Jun 2019 02:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561514578;
 bh=tVTDgsYdLLiYUPWFr4QnZca7y3KHBSyDW0AllHKh8mY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NpPO1yNjEl/psxr/tziNJ1y49UDBtgI4SVsr0FaSb1mJ9g4XnnY9bGtWMuGLCOHD+
 KOjUxxcsTOhNrPP7+iiz11RyWN3JWgPATOtoShGFEYyuEw8RoibdAO7Or8VdOce0J9
 6K/zIiKU2Z181B5gUOpv8V38QkEZpQeoj8NgmMhM=
Date: Wed, 26 Jun 2019 09:53:01 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?M=FCller?= <muellerch-privat@web.de>
Subject: Re: [PATCH 1/2] drivers/staging/rtl8192u: adjust block comments
Message-ID: <20190626015301.GA30966@kroah.com>
References: <20190620113308.GA16195@kroah.com>
 <20190624094640.5459-1-muellerch-privat@web.de>
 <20190624094640.5459-2-muellerch-privat@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624094640.5459-2-muellerch-privat@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@vger.kernel.org, johnfwhitmore@gmail.com,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 24, 2019 at 11:46:39AM +0200, Christian M=FCller wrote:
> As stated in coding-styles.rst multiline comments should be structured in=
 a way,
> that the actual comment starts on the second line of the commented portio=
n. E.g:

<snip>

You sent 2 patches that did different things, yet have the identical
subject line :(

Please fix up and resend the series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 998EE33D32F
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCFA66F5E7;
	Tue, 16 Mar 2021 11:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKBYAuU1g9Fy; Tue, 16 Mar 2021 11:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AED860594;
	Tue, 16 Mar 2021 11:38:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9FA11BF2FB
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D61E360675
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RApEclWgiTJr for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:38:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 673F860600
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:38:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B68F64FF4;
 Tue, 16 Mar 2021 11:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615894688;
 bh=3jTlW3m0IyZ00Sk3hvraqB7V7D2ALLZ27FCreaKJSiY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IsVD5oLAotdRlEbk4WerTqxiP5YdPAtklus0sE6iMIlmB70pLg6zzbG6uVIQepXnK
 9CVY+ChKeoX82GQb/Wf6/EeH8k3RiwQvKd5xs1YyuT7nQ1364W2yeea/26x7Tv7C9K
 axBR1elEXdmPNtt244DlkIfG6uTJiwuZh1uy820w=
Date: Tue, 16 Mar 2021 12:38:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hao Peng <penghaob@uniontech.com>
Subject: Re: [PATCH] staging: rts5208: add empty line in general.c
Message-ID: <YFCYnXhZsFd7b+pd@kroah.com>
References: <20210315111220.27090-1-penghaob@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315111220.27090-1-penghaob@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, izabela.bakollari@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 07:12:20PM +0800, Hao Peng wrote:
> Add one empty line upon return for easy reading.

Why?  Is this really needed?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

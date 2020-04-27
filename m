Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A59931B9A39
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 10:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1A9B85BD5;
	Mon, 27 Apr 2020 08:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mxsX9ReS9j2H; Mon, 27 Apr 2020 08:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EBFC8562A;
	Mon, 27 Apr 2020 08:29:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E086E1BF379
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 08:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC5C9203D7
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 08:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12lVrQ3DNS7H for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 08:29:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id ACCE9203C4
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 08:29:43 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id d16so12803868edv.8
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 01:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3u0dV855unI4O3p8peLsDTUicXAYlb28KnCe8UM7MUs=;
 b=Zlu6VfX2l+7goUVTDjG0v+TCcX75zOZGXqTIdVxBqOlF54VJrT09yWSCdeAt86pL5e
 IR3ssFL9phUIY4cr04VSZ8exPUkcdWgSSislA+X+jcvoelNI6YDI8O1ynEGTXy/+IQdl
 UPD7Nxcf6CE4y3EFj1kwkIMoz8P6STCkLLXBL1NDVVgq6pEkeCJavGgsTDm5zz8XPufO
 Xthx3bO2cYdQ7/GMIVxOyZ3zFuN09avlPFWfLgklAq/pa+vAdO84iaowsDdqhgFsw5eR
 vB8tdAjJvjxu1VLa2ioiMjRM7dS5j/VYyUqdPE/ZPXr3XaSfXaUk3r82WSJY9C+8qGId
 KrsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3u0dV855unI4O3p8peLsDTUicXAYlb28KnCe8UM7MUs=;
 b=lD0C9+HH3LR2A1lCKZyNyxp/Hg5hg9eCcXOX5nOUiu67SMRw4d3safcjFJqRtkmRVL
 byCsVZv4zVpMCcGEVseGILNxoJBnEzV6CFMqkslLSbLXzDjpFsf6C4TpYVSYx2uDD5Rc
 xEHxxZ5ZTOaVCLzWTmV/tL8FO8mm+iC/+Zpyi+DOGN+z0RZyJHew9NahPrFbc1f3Wcjj
 0S92TKudDx66iulTDpX+ig4rzk6ctALGdEqQpWXDP++Y3xjVJYDu7ULLgIfQwLTFnMcH
 SYxabzyO7dX40i0YwuqGzvxzwQKA4lkrVRYynIzjo5INOQ54wDZqrpIRte72MR9mYXnd
 ejWw==
X-Gm-Message-State: AGi0PuYNZtxCrlyA486Qwy3Ukv8SRrAT9lE4tRMNhJ/I8f+URcVjxD9u
 8XkWe85TCOOOiBzKrVW+ZKo=
X-Google-Smtp-Source: APiQypKbYjp0Ad9RAw21UP4Z6Nd2JIoYOrwLCpAUf/+Tg0yEq9TchOmQsbsVdRSuZVn7vzuOqKCM7w==
X-Received: by 2002:a05:6402:391:: with SMTP id
 o17mr17630403edv.71.1587976182020; 
 Mon, 27 Apr 2020 01:29:42 -0700 (PDT)
Received: from localhost
 (ipv6-80adf4751ff4da96.ost.clients.hamburg.freifunk.net.
 [2a03:2267:4:0:80ad:f475:1ff4:da96])
 by smtp.gmail.com with ESMTPSA id r26sm1976873edw.34.2020.04.27.01.29.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Apr 2020 01:29:40 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:29:39 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1] staging: fbtft: fb_st7789v: enabled inversion
Message-ID: <20200427082939.GB18436@portage>
References: <1586424250-25897-1-git-send-email-oliver.graute@gmail.com>
 <20200409101517.GO2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409101517.GO2001@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 gregkh@linuxfoundation.org, Oliver Graute <oliver.graute@kococonnector.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/04/20, Dan Carpenter wrote:
> On Thu, Apr 09, 2020 at 11:24:05AM +0200, Oliver Graute wrote:
> > From: Oliver Graute <oliver.graute@kococonnector.com>
> > 
> > Enable inversion mode
> 
> What the heck is an inversion mode and why would you want it?


Should I name it:

Enable MIPI_DCS_ENTER_INVERT_MODE

Best Regards,

Oliver
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

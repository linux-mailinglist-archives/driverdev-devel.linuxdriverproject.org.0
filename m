Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 981512DB4E6
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 21:16:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E5E12079A;
	Tue, 15 Dec 2020 20:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ggpAmqb+sxQl; Tue, 15 Dec 2020 20:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5984020553;
	Tue, 15 Dec 2020 20:16:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B11061BF409
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 20:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA24286EB0
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 20:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1GM5GQEfTfv5 for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 20:16:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5675B86C82
 for <devel@driverdev.osuosl.org>; Tue, 15 Dec 2020 20:16:43 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x22so405238wmc.5
 for <devel@driverdev.osuosl.org>; Tue, 15 Dec 2020 12:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/zOqoxSagYmofoKUHmkIlwhwGeUtRKR7Bpdk69rbfx8=;
 b=WV7un/KeKac/x+b7RhIrEqMBzOIu2cYPGIJacSyM0+VTxarTDZe6Cm9mb1yLu+bvZv
 Ip8PiNON1qRh0s1LBS02OaoopAmHfATc9AxbI+TW+jXLyJT1QFLuQuPGo1W6Zp8a0Wdj
 s85BtfQYPo4jOn9o2zX5Mokznz79NrlgeShIpBYiecG3iQCqxLghRjK/XrWA5EvjZTWY
 2TeXFPbmi/d1w85gahvbBJdHwNg/ZwThjrIFw/BCNOiAR3Q/CYccXGTsOHsf49cKxlL4
 CQ5uA9cwmInAqrh7BAIlS1mpfCRFmgsrKe/n/hS4Bzg4ne4iJSNQ6+wWqt6jTj7II+a+
 tLcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/zOqoxSagYmofoKUHmkIlwhwGeUtRKR7Bpdk69rbfx8=;
 b=Q/johPXI1xB2YFEydvZw4KKmDrtzw1NR+EWMzoew8uwUFVhXGKSp5LrnvZgfJiOdtv
 sW4c5ZUN45sfONbYf2wbYm/TY+sMQz0AlUInF39xq03S9DdpLiIFB8jlN9h5WJoBukud
 Rj8oK9mooDp/9V6nbAKcn12Yla8om7juZ2qGaJlry8BvjDEbSEZM5Iq9xnO3Q1A104AQ
 gem0b/7tGN3DZWS2xXxylG4bcdIT2mBPYta9luwtKhegNeJU8iB+OSQgW1PQBVTsqZ4w
 CkHxhk97EkMhgvOXhMxkyJPYQbwTQLgUNbQp0BzhBPEQvD8q2LAkOrAC+G9zAAWWjHGz
 uJEA==
X-Gm-Message-State: AOAM53278ne72yPZPFHkhiyt9Qo7EMtm/xE/GfOhDH6NdiK7OxeXjde5
 Y+bgjZKozYIW5qp8dJz802w=
X-Google-Smtp-Source: ABdhPJyp07CyyeGRkvwcBp1uzTblfK5nAB1mSINYdhmLZ6m2Dmx+BMzg3T7jGG6q2Idc1CtECWiUiQ==
X-Received: by 2002:a1c:b082:: with SMTP id z124mr492939wme.129.1608063401802; 
 Tue, 15 Dec 2020 12:16:41 -0800 (PST)
Received: from debian (host-92-5-250-55.as43234.net. [92.5.250.55])
 by smtp.gmail.com with ESMTPSA id t10sm38630929wrp.39.2020.12.15.12.16.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 15 Dec 2020 12:16:41 -0800 (PST)
Date: Tue, 15 Dec 2020 20:16:39 +0000
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Milan Lakhani <milan.lakhani@codethink.co.uk>
Subject: Re: [PATCH] Documentation: process: Correct numbering
Message-ID: <20201215201639.cuq7xtyanbk6bxan@debian>
References: <1608061835-5118-1-git-send-email-milan.lakhani@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1608061835-5118-1-git-send-email-milan.lakhani@codethink.co.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, corbet@lwn.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com,
 linux-safety@lists.elisa.tech
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Milan,

On Tue, Dec 15, 2020 at 07:50:35PM +0000, Milan Lakhani wrote:
> Renumber the steps in submit-checklist.rst as some numbers were skipped.
> 
> Signed-off-by: Milan Lakhani <milan.lakhani@codethink.co.uk>

Maybe you can also add:
Fixes: 72deb455b5ec ("block: remove CONFIG_LBDAF")

But I am confused about why you have added Greg and staging list instead
of 'linux-doc@vger.kernel.org'.

--
Regards
Sudip
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

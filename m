Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7494229ED
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 16:02:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36DF983D8A;
	Tue,  5 Oct 2021 14:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AvyJb1AAVNCw; Tue,  5 Oct 2021 14:02:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FB5F83D62;
	Tue,  5 Oct 2021 14:02:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1941BF2A5
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 14:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A2D160B7B
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 14:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fkek2ipJxsV6 for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 14:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB3C260B62
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 14:02:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2008761165;
 Tue,  5 Oct 2021 14:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633442546;
 bh=nZSWn8xN++BfadytUcz08RDgfDMR1W47HBlabr9TEfQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hNQgiK4FGZhI10JNZYVYWjO+QRPLaEFGDmRwvJ9o3x1J8FZmi8fNmssq6/Y3dNvRB
 RqFV7AtmmbybHUDhi9tVU2C2D4lWscyC1lD8pP82dIUcaeCHpylIEgZjiYjhouauqb
 S5eXt8g+jV01OKZpF/PHUy4wP+xd/Nte615PrFsixhpzZ72yfFX/ca/UvftpyK75pF
 8BvMrkfJMNkMcbMMHwihr1jeVTj4Qsx1vA8lgMJ52ej2upTSL8YrksbYKiYPK1tuuX
 TAm4CRYcdPCnRUJrfe3d+juVa/Np+Bu07fmAKOsXzrh78OZQQcYH+k05G3pHdaLKbX
 jyrdGviqSBFiw==
Date: Tue, 5 Oct 2021 07:02:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v7 13/24] wfx: add hif_tx*.c/hif_tx*.h
Message-ID: <20211005070225.4d5f038a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <87tuhwf19w.fsf@codeaurora.org>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-14-Jerome.Pouiller@silabs.com>
 <87fstlkr1m.fsf@codeaurora.org> <2873071.CAOYYqaKbK@pc-42>
 <20211001161316.w3cwsigacznjbowl@pali>
 <87tuhwf19w.fsf@codeaurora.org>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 05 Oct 2021 09:12:27 +0300 Kalle Valo wrote:
> >> I didn't know it was mandatory to prefix all the functions with the
> >> same prefix.  
> 
> I don't know either if this is mandatory or not, for example I do not
> have any recollection what Linus and other maintainers think of this. I
> just personally think it's good practise to use driver prefix ("wfx_")
> in all non-static functions.

I'd even say all functions. The prefixes are usually 3 chars, it's no
hassle to add and makes reading the code and looking at stack traces
much more intuitive for people who are not intimately familiar with 
the code.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

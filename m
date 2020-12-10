Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D252D5AFA
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 13:53:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BF678734C;
	Thu, 10 Dec 2020 12:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9SO-O5vIxWPH; Thu, 10 Dec 2020 12:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF225872C6;
	Thu, 10 Dec 2020 12:53:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD1DE1BF31C
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C167E872D1
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ScM6qvwq0Jdo for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 12:53:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4C17872C6
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 12:53:50 +0000 (UTC)
Date: Thu, 10 Dec 2020 13:55:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607604830;
 bh=gtqICGnsvOHitJ+qiT1LDw6ed/QH/+lGYZQH8qRXoqI=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=WPfcBZx7Z1JquJ69v007RmtZtwB8tKa1oBqTdCU+tt0bnnPaH8rexkQVxiB9CuEG9
 zyShvqhCLw0HFkGcrkDjsIVw3iQ5GnVZZOz86lmI8FUIxiXKe0ZQ5Aru434oDqxmRt
 OogMivKa0jVQkeZWozG0TItmfUbFDv8wuUQFGooc=
From: 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>
To: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
Subject: Re: [PATCH v1 1/2] Staging: silabs si4455 serial driver: fix
 directory structure and coding style
Message-ID: <X9Iaqd8cb7xBAI7S@kroah.com>
References: <20201210122057.GA31782@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210122057.GA31782@dincontrollerdev>
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
 'Rob Herring' <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 10, 2020 at 12:20:59PM +0000, J=F3zsef Horv=E1th wrote:
> fix: coding style
> fix: error checking
> remove: doc silabs,si4455.txt

What does all of this mean?

Please read the documentation for how to write an effective changelog
text, and where to put the "changes from the first version" text at.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

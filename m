Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D355E38669
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 10:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05A3986D67;
	Fri,  7 Jun 2019 08:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 78kGzH07+0mE; Fri,  7 Jun 2019 08:35:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3341A86B38;
	Fri,  7 Jun 2019 08:35:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E68B11BF326
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 08:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E32C085E77
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 08:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZrzIgDRV8_G for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 08:35:53 +0000 (UTC)
X-Greylist: delayed 01:19:49 by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A51828561E
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 08:35:52 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (unknown [217.70.183.200])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id C259A3A0A50
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 06:41:24 +0000 (UTC)
X-Originating-IP: 83.155.44.161
Received: from classic (mon69-7-83-155-44-161.fbx.proxad.net [83.155.44.161])
 (Authenticated sender: hadess@hadess.net)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id ED95020005;
 Fri,  7 Jun 2019 06:41:14 +0000 (UTC)
Message-ID: <1348e0f922462c1c39b278cdd25c1985d2870bf9.camel@hadess.net>
Subject: Re: [PATCH] staging: rtl8723bs: Fix Unneeded variable: "ret".
 Return "0"
From: Bastien Nocera <hadess@hadess.net>
To: Shobhit Kukreti <shobhitkukreti@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>, Larry
 Finger <Larry.Finger@lwfinger.net>
Date: Fri, 07 Jun 2019 08:41:14 +0200
In-Reply-To: <20190607031049.GA30138@t-1000>
References: <20190607031049.GA30138@t-1000>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-06-06 at 20:10 -0700, Shobhit Kukreti wrote:
> coccicheck reported Unneeded variable ret at
> rtl8723bs/core/rtw_ap.c:1400.
> Function "rtw_acl_remove_sta" always returns 0. Modified return type
> of the
> function to void.
> 
> Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>

Looks good, thanks.

Reviewed-by: Bastien Nocera <hadess@hadess.net>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

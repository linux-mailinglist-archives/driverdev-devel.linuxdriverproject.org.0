Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D0A303B6A
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 12:21:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA07484867;
	Tue, 26 Jan 2021 11:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMXUC7HyO9Di; Tue, 26 Jan 2021 11:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD00B84481;
	Tue, 26 Jan 2021 11:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 105731BF47E
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 11:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0917C86F75
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 11:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvuGqpwZ+Gjb for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 11:21:17 +0000 (UTC)
X-Greylist: delayed 00:26:55 by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D07E86F5F
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 11:21:17 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94) (envelope-from <johannes@sipsolutions.net>)
 id 1l4MPK-00Bsxn-Ff; Tue, 26 Jan 2021 12:21:14 +0100
Message-ID: <e0eac0c0576c260ccdd849996805562167fcc009.camel@sipsolutions.net>
Subject: Re: [PATCH] staging: rtl8723bs: fix wireless regulatory API misuse
From: Johannes Berg <johannes@sipsolutions.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 26 Jan 2021 12:21:13 +0100
In-Reply-To: <YA/7BL3eblv1glZr@kroah.com>
References: <20210126115409.d5fd6f8fe042.Ib5823a6feb2e2aa01ca1a565d2505367f38ad246@changeid>
 <YA/7BL3eblv1glZr@kroah.com>
User-Agent: Evolution 3.36.5 (3.36.5-2.fc32) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ilan.peer@intel.com,
 Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2021-01-26 at 12:20 +0100, Greg Kroah-Hartman wrote:
> 
> > Greg, can you take this for 5.11 please? Or if you prefer, since the
> > patch that exposed this and broke the driver went through my tree, I
> > can take it as well.
> 
> Please feel free to take it through yours, as I don't think I'll have
> any more staging patches for 5.11-final (or none have been sent to me
> yet), so this might be the fastest way in:
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

OK, will do, thanks!

johannes

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

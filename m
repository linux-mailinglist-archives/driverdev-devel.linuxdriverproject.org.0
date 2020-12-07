Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDB92D132D
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 15:12:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF7C587047;
	Mon,  7 Dec 2020 14:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQbAoNHjnrHG; Mon,  7 Dec 2020 14:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 848E486FD9;
	Mon,  7 Dec 2020 14:12:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55F4F1BF3F7
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 14:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 526C4871C0
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 14:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hcvT2S3at3mD for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 14:12:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62392871A2
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 14:12:17 +0000 (UTC)
Date: Mon, 7 Dec 2020 15:13:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607350337;
 bh=IBMlOSU2iIQucQDXTYzzOosHVlluTgpzB+poKtRcw9w=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=wwl07o6i4DTkUBy150n/O9L5A0sK2A7T2brGedOTzb2xqUS9Me31gjT1yipnbAtp3
 rDE80owzb5nA/pXqKIE6wyyECAqYBZL1Bt7O2mFYpeEVLRsVntmF+1gdmhl6eAihwq
 b274GpcaxnQ8E+8T9GikVP0OHJrbkxUcnB8XPL28=
From: Greg KH <gregkh@linuxfoundation.org>
To: Ross Schmidt <ross.schm.dev@gmail.com>
Subject: Re: [PATCH 10/10] staging: rtl8723bs: replace unique macros and
 ELEMENT_ID
Message-ID: <X844h0efBCbQ0yrw@kroah.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
 <20201206034517.4276-10-ross.schm.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201206034517.4276-10-ross.schm.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 05, 2020 at 09:45:17PM -0600, Ross Schmidt wrote:
> Replace unique macros and ELEMENT_ID with kernel provided ieee80211_eid
> enum.
> 
> In a several cases multiple macros or constants are replaced by one
> constant.
> 
> WLAN_EID_HT_CAP, _HT_CAPABILITY_IE_, and EID_HTCapability are replace by
> WLAN_EID_HT_CAPABILITY.
> 
> _WPA2_IE_ID_, EID_WPA2, and _RSN_IE_2_ are replaced by WLAN_EID_RSN.
> 
> _HT_EXTRA_INFO_IE_ and _HT_ADD_INFO_IE_ are replaced by
> WLAN_EID_HT_OPERATION.
> 
> WLAN_EID_GENERIC, _WPA_IE_ID_, _SSN_IE_1_, and _VENDOR_SPECIFIC_IE_ are
> replaced by WLAN_EID_VENDOR_SPECIFIC.
> 
> Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>

All other patches in this series applied cleanly, please rebase this one
and resend.

You might want to break it up into one-patch-per-constant replacement

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4E283758
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 18:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0793586091;
	Tue,  6 Aug 2019 16:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lgt8JtR70fJz; Tue,  6 Aug 2019 16:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9BC4285C7D;
	Tue,  6 Aug 2019 16:53:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF2F71BF5B3
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 16:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D4A8B85521
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 16:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eN3-gsV-HfLf for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 16:53:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 12324854FC
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 16:53:51 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id p13so14016441wru.10
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 09:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=gxNkkJD3b/WJ2BCN1yM/UBEgODs/xbGIxyPlrinnovU=;
 b=YDWulAFE5M1Cj2s64V8j8s4cLZ1QNjqZ5aD10HE/qncnQNsNiWNP1srKy9Z936zPzZ
 GfLtuLfTfrrKO3l7ixtUHK6aIHkRVgaik5+aOyFeBIxlxV7xPMyeKBLP45ubBVWxqsvG
 wv/eUSKpDGVhO/g1WIJNOS0+R9Wfm8cnW8QIO5tIdAWAE7WTYI7POS3z35s1jXLnCod4
 CWXJQqx3mhYa908hr5zPh9VqNo/osxl0WXgr26ayPgSZw6kCEbUbyRkHjfamOz2yZxLr
 yYLSsxfbZ8JDyt/lxippVAe3faaTsN4WpYs1vq6t0UsM2gnR9HGI8OGgrzC6l8M2QSke
 UBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gxNkkJD3b/WJ2BCN1yM/UBEgODs/xbGIxyPlrinnovU=;
 b=G837DlXqdBX5AM6HNJ5QzaQL7LAUsz3NWkezHepvdb81CuckSjXrHFLt+PalfuRbgK
 8L93xhZsbwymzFCBBFolnwZauXiUGnd4MrZ5qio/GMlWoLl9nhcmyy2/NpnctCMyozOA
 yTALs6eqElRMVjdh7/EpnEy4zNK8RaRJq4/7Ee6ri9VSVGrlTGz/aysFBzAnq0zGDCPs
 i7zPRx2zXyC/NwGZWOWWEmFxt4aCEHksGYCScG8o7nkJjaqx7hYnjO1HOE5/8KPf1v42
 MIxVVLLlQI8qYz+F3xmqVPAuEoDGEG91mUsgZbIs1SOid3bY0Y+iDyEGhvTRoTouk3ag
 SahQ==
X-Gm-Message-State: APjAAAVh4LnTkpVGCjspcRG4r+9B9dU+uXUI2elIwoY6HKsiIgsTuJU0
 Xq6TwfnYNcihWrCrMEOy0IA=
X-Google-Smtp-Source: APXvYqwkEM8/7FtU/qIz2EzqolfwDqNOFGtE+29zXZgsxLDAnchWnPtpfHMtQFGIzAti+86XMVHClQ==
X-Received: by 2002:adf:ec49:: with SMTP id w9mr5292515wrn.303.1565110429245; 
 Tue, 06 Aug 2019 09:53:49 -0700 (PDT)
Received: from [172.30.90.245] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id l15sm2581667wrq.64.2019.08.06.09.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 09:53:48 -0700 (PDT)
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
Date: Tue, 6 Aug 2019 09:53:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Len Brown <lenb@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy,

On 8/5/19 11:41 PM, Andy Shevchenko wrote:
> On Tue, Aug 6, 2019 at 2:37 AM Steve Longerbeam <slongerbeam@gmail.com> wrote:
>> There is nothing v4l2-specific about v4l2_fwnode_{parse|put}_link().
>> Make these functions more generally available by moving them to driver
>> base, with the appropriate name changes to the functions and struct.
>>
>> In the process embed a 'struct fwnode_endpoint' in 'struct fwnode_link'
>> for both sides of the link, and make use of fwnode_graph_parse_endpoint()
>> to fully parse both endpoints. Rename members local_node and
>> remote_node to more descriptive local_port_parent and
>> remote_port_parent.
>>
> May I ask if it's going to be used outside of v4l2?

It could be, I can see fwnode_graph_parse_link() being useful in DRM, 
for example. But at this, only media core and v4l2 are making use of it.

This patch was created so that fwnode links can be parsed in a new media 
core function that forms media links from fwnode links.

The full patchset doesn't seem to be up yet, but see [1] for the cover 
letter.

Steve

[1] https://www.mail-archive.com/linux-media@vger.kernel.org/msg148910.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

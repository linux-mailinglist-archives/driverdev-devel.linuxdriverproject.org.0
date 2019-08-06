Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AB682BDC
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 08:41:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94311214E9;
	Tue,  6 Aug 2019 06:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3BEkvg42mpwL; Tue,  6 Aug 2019 06:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB7AA20C41;
	Tue,  6 Aug 2019 06:41:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 673311BF2BA
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 06:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 619BB2041D
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 06:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CQLjxTGZdDs for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 06:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C6EE620381
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 06:41:30 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n9so34814662pgc.1
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 23:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O7Wxe/wopuDLr6j5LeIpmGJxa41bzUArxht2aFk5QSM=;
 b=PQB59KqEEQ6y0YFrHhLO6+txcqFbBih2qQcVtibs659NMIAQoA/YBANqsk+eX0SCuW
 sbY5s48PsWRf99yFceRWzXQadQVb8U2KdQ8q5N/UC+OS70N9ZV3HvwGvO+3M/Xch9BlK
 anE08yqAnkcZ18O26SB/+Gjcpq4K06YY9aZnWnTdy+Wa0fG6zxZ9XbgvfBHtwfHLtab3
 jt8HleZQrIUDKrcyd0EKiknFIxmyoeclUXM7WGS+onyhFtjlcA3xbvW/hYQGqUM1DSzg
 4NZvoLpj01Kft8IYBqifjDaNJ0jIAe5TExtcC+IIoWzOyo6kpNrriZw+LRDwaIOTZ9AJ
 +UXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O7Wxe/wopuDLr6j5LeIpmGJxa41bzUArxht2aFk5QSM=;
 b=U9cOlI+fGHz2vOq13eny0SGyEQJhhtJTHJR/33Bl8SN9CfOeyoRVzFDw+xbok2TP1r
 vbXlFdSUEt0dOaRFyZluL7ube2YK03LQn/QthXBMfmw+rklc9iVY0sS17T2qxA5jWghZ
 V20sekd8JjCxzX+UHicU3RRo2c7WePM/qRWKGmYVcIIPdsciiUzUI9LGWjjBevyQEEhN
 fiKEvl0NDIPYIDj6ZAdpIxfCIkTQTLWF4iD45gEBc31j1CezxoNC/s/2QWi01xRiuJdV
 fGzQ2ye1hY4yi0bjoLjYdcbXWoPJKNRPwODROv/BN8rqVBCbDx0BnbX5VC/vSnEi3OTm
 WIMw==
X-Gm-Message-State: APjAAAVWRzA3lj5KH3QAKswkcEsG8WMunbgeZHPtCi97CdaALZ0QTOEW
 d4RcxQ2HsUnVNF2thnCJNYr7WZEULak1xiSr4M0=
X-Google-Smtp-Source: APXvYqwNrBeCBFk00MAwOwazzhjYBhn+KfLDMNZ9dnhN85lTl19ENdSbslLn8ga+DxdlH5db2IF4JBnKiLNcySs6fRY=
X-Received: by 2002:a63:e54f:: with SMTP id z15mr1658530pgj.4.1565073690207;
 Mon, 05 Aug 2019 23:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
In-Reply-To: <20190805233505.21167-5-slongerbeam@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 6 Aug 2019 09:41:18 +0300
Message-ID: <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Steve Longerbeam <slongerbeam@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 6, 2019 at 2:37 AM Steve Longerbeam <slongerbeam@gmail.com> wrote:
>
> There is nothing v4l2-specific about v4l2_fwnode_{parse|put}_link().
> Make these functions more generally available by moving them to driver
> base, with the appropriate name changes to the functions and struct.
>
> In the process embed a 'struct fwnode_endpoint' in 'struct fwnode_link'
> for both sides of the link, and make use of fwnode_graph_parse_endpoint()
> to fully parse both endpoints. Rename members local_node and
> remote_node to more descriptive local_port_parent and
> remote_port_parent.
>

May I ask if it's going to be used outside of v4l2?
Any user in mind?

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

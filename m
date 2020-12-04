Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA1C2CEC85
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 11:53:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6E3987EAC;
	Fri,  4 Dec 2020 10:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tnxpo5KmMooh; Fri,  4 Dec 2020 10:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0873D87136;
	Fri,  4 Dec 2020 10:53:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD0551BF391
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 10:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A97BF875CE
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 10:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CfOofJ72oMCP for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 10:53:35 +0000 (UTC)
X-Greylist: delayed 00:08:32 by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D408D875A2
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 10:53:34 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (unknown [217.70.183.195])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id 669233B3577
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 10:44:59 +0000 (UTC)
X-Originating-IP: 93.34.118.233
Received: from uno.localdomain (93-34-118-233.ip49.fastwebnet.it
 [93.34.118.233]) (Authenticated sender: jacopo@jmondi.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4544E601C1;
 Fri,  4 Dec 2020 10:44:49 +0000 (UTC)
Date: Fri, 4 Dec 2020 11:44:56 +0100
From: Jacopo Mondi <jacopo@jmondi.org>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] staging: bcm2835: fix vchiq_mmal dependencies
Message-ID: <20201204104456.hhu76as6ruf5vmqq@uno.localdomain>
References: <20201203223836.1362313-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201203223836.1362313-1-arnd@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Arnd,

On Thu, Dec 03, 2020 at 11:38:30PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>
> When the MMAL code is built-in but the vchiq core config is
> set to =m, the mmal code never gets built, which in turn can
> lead to link errors:

My bad, I repetedly ignored the error report received from the 'kernel
test robot' about this. Thanks for fixing.

For my eduction, why would the vchiq-mmal code not get build if
vchiq-core is set to M ? I mean, that configuration is indeed wrong,
as vchiq-mmal uses symbols from vchiq-core and I would expect that to
fail when building the kernel image, not have the other modules (as
bcm2835-camera) fail as a consequence when building modules.

>
> ERROR: modpost: "vchiq_mmal_port_set_format" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_port_disable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_port_parameter_set" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_component_finalise" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_port_connect_tunnel" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_component_enable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_finalise" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_component_init" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_component_disable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "mmal_vchi_buffer_init" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_port_enable" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_version" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_submit_buffer" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_init" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "mmal_vchi_buffer_cleanup" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
> ERROR: modpost: "vchiq_mmal_port_parameter_get" [drivers/staging/vc04_services/bcm2835-camera/bcm2835-v4l2.ko] undefined!
>
> Change the Kconfig to depend on BCM2835_VCHIQ like the other drivers,
> and remove the now redundant dependencies.
>
> Fixes: b18ee53ad297 ("staging: bcm2835: Break MMAL support out from camera")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Jacopo Mondi <jacopo@jmondi.org>

If you noticed this from the same error notification I recevied it
might be fair to report:
Reported-by: kernel test robot <lkp@intel.com>

Thanks
   j

> ---
>  drivers/staging/vc04_services/vchiq-mmal/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/vchiq-mmal/Kconfig b/drivers/staging/vc04_services/vchiq-mmal/Kconfig
> index 500c0d12e4ff..c99525a0bb45 100644
> --- a/drivers/staging/vc04_services/vchiq-mmal/Kconfig
> +++ b/drivers/staging/vc04_services/vchiq-mmal/Kconfig
> @@ -1,6 +1,6 @@
>  config BCM2835_VCHIQ_MMAL
>  	tristate "BCM2835 MMAL VCHIQ service"
> -	depends on (ARCH_BCM2835 || COMPILE_TEST)
> +	depends on BCM2835_VCHIQ
>  	help
>  	  Enables the MMAL API over VCHIQ interface as used for the
>  	  majority of the multimedia services on VideoCore.
> --
> 2.27.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

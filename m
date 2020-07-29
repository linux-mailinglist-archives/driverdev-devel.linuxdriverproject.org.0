Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2FB231D09
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 12:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC03D853D9;
	Wed, 29 Jul 2020 10:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJHvobl4L-qO; Wed, 29 Jul 2020 10:56:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C31E384F33;
	Wed, 29 Jul 2020 10:56:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 441DC1BF4E4
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 10:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E79387662
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 10:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZtkXjPDipIbN for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 10:56:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0691B87660
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 10:56:24 +0000 (UTC)
IronPort-SDR: fp8bnUUepgUdGb6z6US8sdzZX0YZRUwskTjaXHmf+k20yXCwsrGW/82dlBXjSvzB4X2xR3fOBi
 vrhMS9DKyBAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="148851197"
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="148851197"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 03:56:24 -0700
IronPort-SDR: 0OJc/INDGFmSYxN1EL1Ten7Yk3g2nO9Bl6Gat51K6ZP7fMN2KFK/IJt4uTW4zF+1R9KfwBh/IS
 vNDG7rgOipYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="328622767"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jul 2020 03:56:22 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k0jl0-004fwh-L4; Wed, 29 Jul 2020 13:56:22 +0300
Date: Wed, 29 Jul 2020 13:56:22 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ankit Baluni <b18007@students.iitmandi.ac.in>
Subject: Re: [PATCH v3] Staging: media: atomisp: fixed a brace coding sytle
 issue
Message-ID: <20200729105622.GU3703480@smile.fi.intel.com>
References: <20200728225935.28880-1-b18007@students.iitmandi.ac.in>
 <20200729074950.2104-1-b18007@students.iitmandi.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200729074950.2104-1-b18007@students.iitmandi.ac.in>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 01:19:50PM +0530, Ankit Baluni wrote:
> Removed braces for a 'if' condition as it contain only single line & 
> there is no need for braces for such case according to coding style
> rules.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
> 
> ---
> Changes in v2:
> 	-Added more description about the patch.
> 	-Added space before the symobol '<' in 'From'
> 	 and 'Signed-off-by' line.
> Changes in v3:
> 	-Removed space before ':' in subject line.
> 
>  drivers/staging/media/atomisp/pci/atomisp_cmd.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> index 8ea65bef35d2..28b96b66f4f3 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> @@ -4981,9 +4981,8 @@ enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
>  	case ATOMISP_CAMERA_PORT_SECONDARY:
>  		return MIPI_PORT1_ID;
>  	case ATOMISP_CAMERA_PORT_TERTIARY:
> -		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID) {
> +		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID)
>  			return MIPI_PORT1_ID + 1;
> -		}
>  	/* fall through */
>  	default:
>  		dev_err(isp->dev, "unsupported port: %d\n", port);
> -- 
> 2.25.1
> 

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

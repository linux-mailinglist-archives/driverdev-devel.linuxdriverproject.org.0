Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA7E21411
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 09:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B954C875F3;
	Fri, 17 May 2019 07:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fkY8zGESfLRL; Fri, 17 May 2019 07:15:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A717875A9;
	Fri, 17 May 2019 07:15:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1436E1C162A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1122488316
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2IegXiinmuqD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E000C8830F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65B5020868;
 Fri, 17 May 2019 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558077322;
 bh=0QRAHyY2WDRgXP0F0SoGWbhqjfGrM9219/8xC7tuQg8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=13DTfGMp/yjaqOKIn5hqK47rFk4z+5ZttQUBslDYfLKpJuV7soo1IsVMXlQzO9eZ9
 sPL7wEkaFFgyRESrNKXpn+nzXCGzZjjhA01SF/HIDB5V0Ys0HWr2rmI1eUI2AFv3Be
 9MlzU8ls4GTQxHX58y7GJS+GXTenpC+ScvedMr2Q=
Date: Fri, 17 May 2019 09:15:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v2 2/9] staging: kpc2000: add separate show functions for
 kpc_uio_class device attributes and defined them as read-only.
Message-ID: <20190517071519.GC23217@kroah.com>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
 <20190516213814.22232-3-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516213814.22232-3-jeremy@azazel.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 16, 2019 at 10:38:07PM +0100, Jeremy Sowden wrote:
> Define separate simple show functions for each attribute instead of
> having a one big one containing a chain of conditionals.
> 
> Replaced scnprintf calls with sprintf since all the outputs are short
> bounded strings or single integers.
> 
> All of the device attributes are read-only, so use DEVICE_ATTR_RO to
> define them.
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
>  drivers/staging/kpc2000/kpc2000/cell_probe.c | 136 ++++++++++++-------
>  1 file changed, 90 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> index 6a2ebdf20113..3798f8e2e165 100644
> --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> @@ -145,55 +145,100 @@ struct kpc_uio_device {
>      u16 core_num;
>  };
>  
> -static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
> +static ssize_t offset_show(struct device *dev, struct device_attribute *attr,
> +			   char *buf)
>  {
> -    struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> -
> -    #define ATTR_NAME_CMP(v)  (strcmp(v, attr->attr.name) == 0)
> -    if ATTR_NAME_CMP("offset"){
> -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.offset);
> -    } else if ATTR_NAME_CMP("size"){
> -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.length);
> -    } else if ATTR_NAME_CMP("type"){
> -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.type);
> -    }
> -    else if ATTR_NAME_CMP("s2c_dma"){
> -        if (kudev->cte.s2c_dma_present){
> -            return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.s2c_dma_channel_num);
> -        } else {
> -            return scnprintf(buf, PAGE_SIZE, "not present\n");
> -        }
> -    } else if ATTR_NAME_CMP("c2s_dma"){
> -        if (kudev->cte.c2s_dma_present){
> -            return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.c2s_dma_channel_num);
> -        } else {
> -            return scnprintf(buf, PAGE_SIZE, "not present\n");
> -        }
> -    }
> -    else if ATTR_NAME_CMP("irq_count"){
> -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_count);
> -    } else if ATTR_NAME_CMP("irq_base_num"){
> -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_base_num);
> -    } else if ATTR_NAME_CMP("core_num"){
> -        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->core_num);
> -    } else {
> -        return 0;
> -    }
> -    #undef ATTR_NAME_CMP
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%u\n", kudev->cte.offset);
> +}
> +
> +static ssize_t size_show(struct device *dev, struct device_attribute *attr,
> +			 char *buf)
> +{
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%u\n", kudev->cte.length);
>  }
>  
> +static ssize_t type_show(struct device *dev, struct device_attribute *attr,
> +			 char *buf)
> +{
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%u\n", kudev->cte.type);
> +}
> +
> +static ssize_t s2c_dma_ch_show(struct device *dev,
> +			       struct device_attribute *attr, char *buf)
> +{
> +	return 0;
> +}
> +
> +static ssize_t c2s_dma_ch_show(struct device *dev,
> +			       struct device_attribute *attr, char *buf)
> +{
> +	return 0;
> +}
> +
> +static ssize_t s2c_dma_show(struct device *dev, struct device_attribute *attr,
> +			    char *buf)
> +{
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
>  
> -DEVICE_ATTR(offset,  0444, show_attr, NULL);
> -DEVICE_ATTR(size,    0444, show_attr, NULL);
> -DEVICE_ATTR(type,    0444, show_attr, NULL);
> -DEVICE_ATTR(s2c_dma_ch, 0444, show_attr, NULL);
> -DEVICE_ATTR(c2s_dma_ch, 0444, show_attr, NULL);
> -DEVICE_ATTR(s2c_dma, 0444, show_attr, NULL);
> -DEVICE_ATTR(c2s_dma, 0444, show_attr, NULL);
> -DEVICE_ATTR(irq_count, 0444, show_attr, NULL);
> -DEVICE_ATTR(irq_base_num, 0444, show_attr, NULL);
> -DEVICE_ATTR(core_num, 0444, show_attr, NULL);
> -struct attribute * kpc_uio_class_attrs[] = {
> +	if (!kudev->cte.s2c_dma_present)
> +		return sprintf(buf, "%s", "not present\n");
> +
> +	return sprintf(buf, "%u\n", kudev->cte.s2c_dma_channel_num);
> +}
> +
> +static ssize_t c2s_dma_show(struct device *dev, struct device_attribute *attr,
> +			    char *buf)
> +{
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> +
> +	if (!kudev->cte.c2s_dma_present)
> +		return sprintf(buf, "%s", "not present\n");
> +
> +	return sprintf(buf, "%u\n", kudev->cte.c2s_dma_channel_num);
> +}
> +
> +static ssize_t irq_count_show(struct device *dev, struct device_attribute *attr,
> +			      char *buf)
> +{
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%u\n", kudev->cte.irq_count);
> +}
> +
> +static ssize_t irq_base_num_show(struct device *dev,
> +				 struct device_attribute *attr, char *buf)
> +{
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%u\n", kudev->cte.irq_base_num);
> +}
> +
> +static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
> +			     char *buf)
> +{
> +	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
> +
> +	return sprintf(buf, "%u\n", kudev->core_num);
> +}
> +
> +DEVICE_ATTR_RO(offset);

Please put these DEVICE_ATTR_RO() lines right below the show function,
to make it a bit more obvious.  That's the normal "style" of these.

And make it static.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

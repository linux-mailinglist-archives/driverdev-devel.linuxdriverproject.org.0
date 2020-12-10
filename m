Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523E62D603F
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 16:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF43087292;
	Thu, 10 Dec 2020 15:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q1EjNtdaWcf7; Thu, 10 Dec 2020 15:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3018287282;
	Thu, 10 Dec 2020 15:45:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 586CF1BF834
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 15:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FCB62044A
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 15:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dmMkEoeHk3QC for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 15:45:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 207672038A
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 15:45:49 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BAFjhe1086968;
 Thu, 10 Dec 2020 15:45:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=iBe6lHUiTvoXtgtf50BwvecvrYfc9ccI0eOCQ1k8nro=;
 b=AhhtXs3AJGWW4TlfGNzBxE7PxF/EmxNtmWltkYkvX5o0lYP6sOLB7Wv1YwoEv+y0OJMw
 waqkoCL0JbUATFaHMn5w9qwhDu4GXXgFFEs5VeqeefrfnQlhSAIHgloR8FTDB048/4rh
 IOCw4n5Vvl+2o6wZnFHsb8SXuC2yiUEBh3kxei06IulY66COJr23IVVNgz18nYp0sTQh
 +Xwyrifn0q+cmetjKkwB2Ry/rPQdw+EFtxCYNNnYekHqsqyvTaeXGKdgQnr7NrsoEKD4
 iVA8deXvEim/0/6ITe7tjurN+h+fkc//XR8QuoxAopkmRC2S9UsWdCS3ncjlTAUJE5Ft FQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 35825me2pu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 10 Dec 2020 15:45:48 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BAFacI4142046;
 Thu, 10 Dec 2020 15:43:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 358m41u3t1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Dec 2020 15:43:48 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0BAFhjtX022981;
 Thu, 10 Dec 2020 15:43:45 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Dec 2020 07:43:43 -0800
Date: Thu, 10 Dec 2020 18:43:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
Subject: Re: [PATCH v1 1/2] Staging: silabs si4455 serial driver: fix
 directory structure and coding style
Message-ID: <20201210154333.GN2767@kadam>
References: <20201210122057.GA31782@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210122057.GA31782@dincontrollerdev>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9830
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9830
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100100
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
Cc: devel@driverdev.osuosl.org,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 'Rob Herring' <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 10, 2020 at 12:20:59PM +0000, J=F3zsef Horv=E1th wrote:
> fix: coding style
> fix: error checking
> remove: doc silabs,si4455.txt
> =

> Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>

Just fold (combine) this check in with the first.  This is much better
but there are still 54 checkpatch warnins.

total: 0 errors, 2 warnings, 52 checks, 1311 lines checked

This is much better.  Do we have to print so many warnings?  It's
useful for debugging but it makes the code messy.  The ioctl still has
some security issues with regards to user pointers (see bottom).


>  struct si4455_part_info {
> -	u8				CHIPREV;
> -	u16				PART;
> -	u8				PBUILD;
> -	u16				ID;
> -	u8				CUSTOMER;
> -	u8				ROMID;
> -	u8				BOND;
> +	u8 CHIPREV;
> +	u16 PART;
> +	u8 PBUILD;
> +	u16 ID;
> +	u8 CUSTOMER;
> +	u8 ROMID;
> +	u8 BOND;

Make these lower case letters.


>  static int si4455_get_response(struct uart_port *port,
>  				int length,
>  				u8 *data)
>  {
> -	int ret =3D -EIO;
> -	u8 dataOut[] =3D { SI4455_CMD_ID_READ_CMD_BUFF };
> -	u8 *dataIn =3D devm_kzalloc(port->dev, 1 + length, GFP_KERNEL);
> -	struct spi_transfer xfer[] =3D {
> -		{
> -			.tx_buf =3D dataOut,
> -			.len =3D sizeof(dataOut),
> -		}, {
> -			.rx_buf =3D dataIn,
> -			.len =3D 1 + length,
> -		}
> -	};
> -	int errCnt =3D 10000;
> +	int ret;
> +	u8 data_out[] =3D { SI4455_CMD_ID_READ_CMD_BUFF };
> +	u8 *data_in =3D NULL;
> +	struct spi_transfer xfer[2];
> +	int err =3D 10000;

Use "cnt" instead of "err" otherwise people will get confused and start
saying "err =3D some_function();"

>  =

> -	while (errCnt > 0) {
> -		dataOut[0] =3D SI4455_CMD_ID_READ_CMD_BUFF;
> +	data_in =3D kzalloc(1 + length, GFP_KERNEL);
> +	if (!data_in)
> +		return -ENOMEM;
> +
> +	memset(&xfer, 0x00, sizeof(xfer));
> +	xfer[0].tx_buf =3D data_out;
> +	xfer[0].len =3D sizeof(data_out);
> +	xfer[1].rx_buf =3D data_in;
> +	xfer[1].len =3D 1 + length;
> +
> +	while (--err > 0) {
> +		data_out[0] =3D SI4455_CMD_ID_READ_CMD_BUFF;
>  		ret =3D spi_sync_transfer(to_spi_device(port->dev),
>  					xfer,
>  					ARRAY_SIZE(xfer));
> -		if (ret =3D=3D 0) {
> -			if (dataIn[0] =3D=3D 0xFF) {
> -				if ((length > 0) && (data !=3D NULL)) {
> -					memcpy(data, &dataIn[1], length);
> -				} else {
> -					if (length > 0)
> -						ret =3D -EINVAL;
> -				}
> -				break;
> +		if (ret) {
> +			dev_err(port->dev, "%s: spi_sync_transfer error(%i)", __func__, ret);
> +			break;
> +		}
> +
> +		if (data_in[0] =3D=3D 0xFF) {
> +			if (length > 0 && data) {
> +				memcpy(data, &data_in[1], length);
> +			} else {
> +				if (length > 0)
> +					ret =3D -EINVAL;

Should this break if we encounter an error?

>  			}
> -			usleep_range(100, 200);
> -		} else {
>  			break;
>  		}
> -		errCnt--;
> +		usleep_range(100, 200);
>  	}
> -	if (errCnt =3D=3D 0) {
> -		dev_err(port->dev, "si4455_poll_cts:errCnt=3D=3D%i", errCnt);
> +	if (err =3D=3D 0) {
> +		dev_err(port->dev, "%s:err=3D=3D%i", __func__, err);
>  		ret =3D -EIO;
>  	}
> -	if (dataIn !=3D NULL)
> -		devm_kfree(port->dev, dataIn);
> +	kfree(data_in);
>  	return ret;
>  }
>  =

> +static int si4455_poll_cts(struct uart_port *port)
> +{
> +	return si4455_get_response(port, 0, NULL);
> +}
> +
>  static int si4455_send_command(struct uart_port *port,
>  				int length,
>  				u8 *data)
> @@ -214,134 +193,118 @@ static int si4455_send_command(struct uart_port *=
port,
>  	int ret;
>  =

>  	ret =3D si4455_poll_cts(port);
> -	if (ret =3D=3D 0) {
> -		ret =3D spi_write(to_spi_device(port->dev), data, length);
> -		if (ret) {
> -			dev_err(port->dev,
> -				"%s: spi_write error(%i)",
> -				__func__,
> -				ret);
> -		}
> -	} else {
> -		dev_err(port->dev,
> -			"%s: si4455_poll_cts error(%i)",
> +	if (ret) {
> +		dev_err(port->dev, "%s: si4455_poll_cts error(%i)",
>  			__func__,
>  			ret);

This can fit in two lines.

		dev_err(port->dev, "%s: si4455_poll_cts error(%i)", __func__,
			ret);


> +		return ret;
> +	}
> +	ret =3D spi_write(to_spi_device(port->dev), data, length);
> +	if (ret) {
> +		dev_err(port->dev,
> +			"%s: spi_write error(%i)", __func__, ret);
>  	}
>  	return ret;
>  }
>  =

>  static int si4455_send_command_get_response(struct uart_port *port,
> -						int outLength,
> -						u8 *outData,
> -						int inLength,
> -						u8 *inData)
> +						int out_length,
> +						u8 *data_out,
> +						int in_length,
> +						u8 *data_in)
>  {
>  	int ret;
>  =

> -	ret =3D si4455_send_command(port, outLength, outData);
> -	if (!ret) {
> -		ret =3D si4455_get_response(port, inLength, inData);
> -	} else {
> -		dev_err(port->dev,
> -			"%s: si4455_send_command error(%i)",
> -			__func__,
> -			ret);
> +	ret =3D si4455_send_command(port, out_length, data_out);
> +	if (ret) {
> +		dev_err(port->dev, "%s: si4455_send_command error(%i)",
> +			__func__, ret);
> +		return ret;
>  	}
> +
> +	ret =3D si4455_get_response(port, in_length, data_in);
> +
>  	return ret;
>  }
>  =

>  static int si4455_read_data(struct uart_port *port,
>  				u8 command,
> -				int pollCts,
> +				int poll,
>  				int length,
>  				u8 *data)
>  {
>  	int ret =3D 0;
> -	u8 dataOut[] =3D { command };
> +	u8 data_out[] =3D { command };
>  	struct spi_transfer xfer[] =3D {
>  		{
> -			.tx_buf =3D dataOut,
> -			.len =3D sizeof(dataOut),
> +			.tx_buf =3D data_out,
> +			.len =3D sizeof(data_out),
>  		}, {
>  			.rx_buf =3D data,
>  			.len =3D length,
>  		}
>  	};
>  =

> -	if (pollCts)
> +	if (poll) {
>  		ret =3D si4455_poll_cts(port);
> +		if (ret)
> +			return ret;
> +	}
>  =

> -	if (ret =3D=3D 0) {
> -		ret =3D spi_sync_transfer(to_spi_device(port->dev),
> -					xfer,
> -					ARRAY_SIZE(xfer));
> -		if (ret) {
> -			dev_err(port->dev,
> -				"%s: spi_sync_transfer error(%i)",
> -				__func__,
> -				ret);
> -		}
> +	ret =3D spi_sync_transfer(to_spi_device(port->dev),
> +				xfer,
> +				ARRAY_SIZE(xfer));
> +	if (ret) {
> +		dev_err(port->dev, "%s: spi_sync_transfer error(%i)",
> +			__func__,
> +			ret);
>  	}
>  	return ret;
>  }
>  =

>  static int si4455_write_data(struct uart_port *port,
>  				u8 command,
> -				int pollCts,
> +				int poll,
>  				int length,
>  				u8 *data)
>  {
>  	int ret =3D 0;
> -	u8 *dataOut =3D NULL;
> +	u8 *data_out;
>  =

> -	if (pollCts)
> +	if (poll) {
>  		ret =3D si4455_poll_cts(port);
> +		if (ret)
> +			return ret;
> +	}
>  =

> -	if (ret =3D=3D 0) {
> -		dataOut =3D devm_kzalloc(port->dev, 1 + length, GFP_KERNEL);
> -		if (dataOut !=3D NULL) {
> -			dataOut[0] =3D command;
> -			memcpy(&dataOut[1], data, length);
> -			ret =3D spi_write(to_spi_device(port->dev),
> -					dataOut,
> -					1 + length);
> -			if (ret) {
> -				dev_err(port->dev,
> -					"%s: spi_write error(%i)",
> -					__func__,
> -					ret);
> -			}
> -		} else {
> -			dev_err(port->dev,
> -				"%s: devm_kzalloc error",
> -				__func__);
> -			ret =3D -ENOMEM;
> -		}
> +	data_out =3D kzalloc(1 + length, GFP_KERNEL);
> +	if (!data_out)
> +		return -ENOMEM;
> +
> +	data_out[0] =3D command;
> +	memcpy(&data_out[1], data, length);
> +	ret =3D spi_write(to_spi_device(port->dev), data_out, 1 + length);
> +	if (ret) {
> +		dev_err(port->dev, "%s: spi_write error(%i)",
> +			__func__, ret);
>  	}
> -	if (dataOut !=3D NULL)
> -		devm_kfree(port->dev, dataOut);
> +	kfree(data_out);
>  =

>  	return ret;
>  }
>  =

> -static int si4455_poll_cts(struct uart_port *port)
> -{
> -	return si4455_get_response(port, 0, NULL);
> -}
> -
>  static void si4455_set_power(struct si4455_port *priv,
>  				int on)
>  {
> -	if (priv->shdn_gpio) {
> -		if (on) {
> -			gpiod_direction_output(priv->shdn_gpio, 0);
> -			usleep_range(4000, 5000);
> -			gpiod_set_value(priv->shdn_gpio, 1);
> -			usleep_range(4000, 5000);
> -		} else {
> -			gpiod_direction_output(priv->shdn_gpio, 0);
> -		}
> +	if (!priv->shdn_gpio)
> +		return;
> +	if (on) {
> +		gpiod_direction_output(priv->shdn_gpio, 0);
> +		usleep_range(4000, 5000);
> +		gpiod_set_value(priv->shdn_gpio, 1);
> +		usleep_range(4000, 5000);
> +	} else {
> +		gpiod_direction_output(priv->shdn_gpio, 0);
>  	}
>  }
>  =

> @@ -363,27 +326,23 @@ static int si4455_get_part_info(struct uart_port *p=
ort,
>  				struct si4455_part_info *result)
>  {
>  	int ret;
> -	u8 dataOut[] =3D { SI4455_CMD_ID_PART_INFO };
> -	u8 dataIn[SI4455_CMD_REPLY_COUNT_PART_INFO];
> -
> -	ret =3D si4455_send_command_get_response(port,
> -						sizeof(dataOut),
> -						dataOut,
> -						sizeof(dataIn),
> -						dataIn);
> -	if (ret =3D=3D 0) {
> -		result->CHIPREV =3D dataIn[0];
> -		memcpy(&result->PART, &dataIn[1], sizeof(result->PART));
> -		result->PBUILD =3D dataIn[3];
> -		memcpy(&result->ID, &dataIn[4], sizeof(result->ID));
> -		result->CUSTOMER =3D dataIn[6];
> -		result->ROMID =3D dataIn[7];
> -		result->BOND =3D dataIn[8];
> -	} else {
> +	u8 data_out[] =3D { SI4455_CMD_ID_PART_INFO };
> +	u8 data_in[SI4455_CMD_REPLY_COUNT_PART_INFO];
> +
> +	ret =3D si4455_send_command_get_response(port, sizeof(data_out), data_o=
ut,
> +					       sizeof(data_in), data_in);
> +	if (ret) {
>  		dev_err(port->dev,
>  			"%s: si4455_send_command_get_response error(%i)",
> -			__func__,
> -			ret);
> +			__func__, ret);


return ret;

> +	} else {
> +		result->CHIPREV =3D data_in[0];
> +		memcpy(&result->PART, &data_in[1], sizeof(result->PART));
> +		result->PBUILD =3D data_in[3];
> +		memcpy(&result->ID, &data_in[4], sizeof(result->ID));
> +		result->CUSTOMER =3D data_in[6];
> +		result->ROMID =3D data_in[7];
> +		result->BOND =3D data_in[8];


Then you can pull these lines in one tab.  Ideally, the success path is
indented one tab and the error path is indented two tabs.


>  	}
>  	return ret;
>  }
> @@ -395,33 +354,29 @@ static int si4455_get_int_status(struct uart_port *=
port,
>  					struct si4455_int_status *result)
>  {
>  	int ret;
> -	u8 dataOut[] =3D {
> +	u8 data_out[] =3D {
>  		SI4455_CMD_ID_GET_INT_STATUS,
>  		phClear,
>  		modemClear,
>  		chipClear
>  	};
> -	u8 dataIn[SI4455_CMD_REPLY_COUNT_GET_INT_STATUS];
> +	u8 data_in[SI4455_CMD_REPLY_COUNT_GET_INT_STATUS];
>  =

> -	ret =3D si4455_send_command_get_response(port,
> -						sizeof(dataOut),
> -						dataOut,
> -						sizeof(dataIn),
> -						dataIn);
> -	if (ret =3D=3D 0) {
> -		result->INT_PEND       =3D dataIn[0];
> -		result->INT_STATUS     =3D dataIn[1];
> -		result->PH_PEND        =3D dataIn[2];
> -		result->PH_STATUS      =3D dataIn[3];
> -		result->MODEM_PEND     =3D dataIn[4];
> -		result->MODEM_STATUS   =3D dataIn[5];
> -		result->CHIP_PEND      =3D dataIn[6];
> -		result->CHIP_STATUS    =3D dataIn[7];
> -	} else {
> +	ret =3D si4455_send_command_get_response(port, sizeof(data_out), data_o=
ut,
> +					       sizeof(data_in), data_in);
> +	if (ret) {
>  		dev_err(port->dev,
>  			"%s: si4455_send_command_get_response error(%i)",
> -			__func__,
> -			ret);
> +			__func__, ret);
> +	} else {
> +		result->INT_PEND       =3D data_in[0];
> +		result->INT_STATUS     =3D data_in[1];
> +		result->PH_PEND        =3D data_in[2];
> +		result->PH_STATUS      =3D data_in[3];
> +		result->MODEM_PEND     =3D data_in[4];
> +		result->MODEM_STATUS   =3D data_in[5];
> +		result->CHIP_PEND      =3D data_in[6];
> +		result->CHIP_STATUS    =3D data_in[7];
>  	}
>  	return ret;
>  }
> @@ -431,32 +386,27 @@ static int si4455_get_modem_status(struct uart_port=
 *port,
>  					struct si4455_modem_status *result)
>  {
>  	int ret;
> -	u8 dataOut[] =3D {
> +	u8 data_out[] =3D {
>  		SI4455_CMD_ID_GET_MODEM_STATUS,
>  		modemClear,
>  	};
> -	u8 dataIn[SI4455_CMD_REPLY_COUNT_GET_MODEM_STATUS];
> +	u8 data_in[SI4455_CMD_REPLY_COUNT_GET_MODEM_STATUS];
>  =

> -	ret =3D si4455_send_command_get_response(port,
> -						sizeof(dataOut),
> -						dataOut,
> -						sizeof(dataIn),
> -						dataIn);
> -	if (ret =3D=3D 0) {
> -		result->MODEM_PEND      =3D dataIn[0];
> -		result->MODEM_STATUS    =3D dataIn[1];
> -		result->CURR_RSSI       =3D dataIn[2];
> -		result->LATCH_RSSI      =3D dataIn[3];
> -		result->ANT1_RSSI       =3D dataIn[4];
> -		result->ANT2_RSSI       =3D dataIn[5];
> -		memcpy(&result->AFC_FREQ_OFFSET,
> -			&dataIn[6],
> -			sizeof(result->AFC_FREQ_OFFSET));
> -	} else {
> +	ret =3D si4455_send_command_get_response(port, sizeof(data_out), data_o=
ut,
> +					       sizeof(data_in), data_in);
> +	if (ret) {
>  		dev_err(port->dev,
>  			"%s: si4455_send_command_get_response error(%i)",
> -			__func__,
> -			ret);
> +			__func__, ret);
> +	} else {
> +		result->MODEM_PEND      =3D data_in[0];
> +		result->MODEM_STATUS    =3D data_in[1];
> +		result->CURR_RSSI       =3D data_in[2];
> +		result->LATCH_RSSI      =3D data_in[3];
> +		result->ANT1_RSSI       =3D data_in[4];
> +		result->ANT2_RSSI       =3D data_in[5];
> +		memcpy(&result->AFC_FREQ_OFFSET,
> +		       &data_in[6], sizeof(result->AFC_FREQ_OFFSET));
>  	}
>  	return ret;
>  }
> @@ -465,25 +415,21 @@ static int si4455_fifo_info(struct uart_port *port,
>  				u8 fifo,
>  				struct si4455_fifo_info *result)
>  {
> -	int ret =3D 0;
> -	u8 dataOut[SI4455_CMD_ARG_COUNT_FIFO_INFO] =3D {
> +	int ret;
> +	u8 data_out[SI4455_CMD_ARG_COUNT_FIFO_INFO] =3D {
>  		SI4455_CMD_ID_FIFO_INFO, fifo
>  	};
> -	u8 dataIn[SI4455_CMD_REPLY_COUNT_FIFO_INFO] =3D { 0 };
> +	u8 data_in[SI4455_CMD_REPLY_COUNT_FIFO_INFO] =3D { 0 };
>  =

> -	ret =3D si4455_send_command_get_response(port,
> -						sizeof(dataOut),
> -						dataOut,
> -						sizeof(dataIn),
> -						dataIn);
> -	if (ret =3D=3D 0) {
> -		result->RX_FIFO_COUNT  =3D dataIn[0];
> -		result->TX_FIFO_SPACE  =3D dataIn[1];
> -	} else {
> +	ret =3D si4455_send_command_get_response(port, sizeof(data_out), data_o=
ut,
> +					       sizeof(data_in), data_in);
> +	if (ret) {
>  		dev_err(port->dev,
>  			"%s: si4455_send_command_get_response error(%i)",
> -			__func__,
> -			ret);
> +			__func__, ret);
> +	} else {
> +		result->RX_FIFO_COUNT  =3D data_in[0];
> +		result->TX_FIFO_SPACE  =3D data_in[1];
>  	}
>  	return ret;
>  }
> @@ -492,10 +438,7 @@ static int si4455_read_rx_fifo(struct uart_port *por=
t,
>  				int length,
>  				u8 *data)
>  {
> -	return si4455_read_data(port,
> -				SI4455_CMD_ID_READ_RX_FIFO,
> -				0,
> -				length,
> +	return si4455_read_data(port, SI4455_CMD_ID_READ_RX_FIFO, 0, length,
>  				data);
>  }
>  =

> @@ -503,35 +446,31 @@ static int si4455_write_tx_fifo(struct uart_port *p=
ort,
>  				int length,
>  				u8 *data)
>  {
> -	return si4455_write_data(port,
> -					SI4455_CMD_ID_WRITE_TX_FIFO,
> -					0,
> -					length,
> -					data);
> +	return si4455_write_data(port, SI4455_CMD_ID_WRITE_TX_FIFO, 0, length,
> +				data);
>  }
>  =

>  static int si4455_rx(struct uart_port *port,
>  			u32 channel,
>  			u8 condition,
>  			u16 length,
> -			u8 nextState1,
> -			u8 nextState2,
> -			u8 nextState3)
> +			u8 next_state1,
> +			u8 next_state2,
> +			u8 next_state3)
>  {
> -	u8 dataOut[SI4455_CMD_ARG_COUNT_START_RX];
> -
> -	dataOut[0] =3D SI4455_CMD_ID_START_RX;
> -	dataOut[1] =3D channel;
> -	dataOut[2] =3D condition;
> -	dataOut[3] =3D (u8)(length >> 8);
> -	dataOut[4] =3D (u8)(length);
> -	dataOut[5] =3D nextState1;
> -	dataOut[6] =3D nextState2;
> -	dataOut[7] =3D nextState3;
> -
> -	return si4455_send_command(port,
> -					SI4455_CMD_ARG_COUNT_START_RX,
> -					dataOut);
> +	u8 data_out[SI4455_CMD_ARG_COUNT_START_RX];
> +
> +	data_out[0] =3D SI4455_CMD_ID_START_RX;
> +	data_out[1] =3D channel;
> +	data_out[2] =3D condition;
> +	data_out[3] =3D (u8)(length >> 8);
> +	data_out[4] =3D (u8)(length);
> +	data_out[5] =3D next_state1;
> +	data_out[6] =3D next_state2;
> +	data_out[7] =3D next_state3;
> +
> +	return si4455_send_command(port, SI4455_CMD_ARG_COUNT_START_RX,
> +					data_out);
>  }
>  =

>  static int si4455_tx(struct uart_port *port,
> @@ -539,31 +478,29 @@ static int si4455_tx(struct uart_port *port,
>  			u8 condition,
>  			u16 length)
>  {
> -	u8 dataOut[/*6*/ SI4455_CMD_ARG_COUNT_START_TX];
> -
> -	dataOut[0] =3D SI4455_CMD_ID_START_TX;
> -	dataOut[1] =3D channel;
> -	dataOut[2] =3D condition;
> -	dataOut[3] =3D (u8)(length >> 8);
> -	dataOut[4] =3D (u8)(length);
> -	/*TODO: radioCmd[5] =3D 0x44; in case of rev c2a*/
> -
> -	return si4455_send_command(port,
> -					/*6*/ SI4455_CMD_ARG_COUNT_START_TX,
> -					dataOut);
> +	u8 data_out[/*6*/ SI4455_CMD_ARG_COUNT_START_TX];
> +
> +	data_out[0] =3D SI4455_CMD_ID_START_TX;
> +	data_out[1] =3D channel;
> +	data_out[2] =3D condition;
> +	data_out[3] =3D (u8)(length >> 8);
> +	data_out[4] =3D (u8)(length);
> +	/*TODO: data_out[5] =3D 0x44; in case of rev c2a*/
> +
> +	return si4455_send_command(port, /*6*/ SI4455_CMD_ARG_COUNT_START_TX,
> +					data_out);
>  }
>  =

>  static int si4455_change_state(struct uart_port *port,
> -				u8 nextState1)
> +				u8 next_state1)
>  {
> -	u8 dataOut[SI4455_CMD_ARG_COUNT_CHANGE_STATE];
> +	u8 data_out[SI4455_CMD_ARG_COUNT_CHANGE_STATE];
>  =

> -	dataOut[0] =3D SI4455_CMD_ID_CHANGE_STATE;
> -	dataOut[1] =3D (u8)nextState1;
> +	data_out[0] =3D SI4455_CMD_ID_CHANGE_STATE;
> +	data_out[1] =3D (u8)next_state1;
>  =

> -	return si4455_send_command(port,
> -					SI4455_CMD_ARG_COUNT_CHANGE_STATE,
> -					dataOut);
> +	return si4455_send_command(port, SI4455_CMD_ARG_COUNT_CHANGE_STATE,
> +					data_out);
>  }
>  =

>  static int si4455_begin_tx(struct uart_port *port,
> @@ -572,88 +509,66 @@ static int si4455_begin_tx(struct uart_port *port,
>  				u8 *data)
>  {
>  	int ret =3D 0;
> -	struct si4455_int_status intStatus =3D { 0 };
> -	struct si4455_fifo_info fifoInfo =3D { 0 };
> +	struct si4455_int_status int_status =3D { 0 };
> +	struct si4455_fifo_info fifo_info =3D { 0 };
>  =

>  	dev_dbg(port->dev, "%s(%u, %u)", __func__, channel, length);
>  	if ((length > SI4455_FIFO_SIZE) || (length < 0))
> -		ret =3D -EINVAL;
> +		return -EINVAL;
>  =

> -	if (ret =3D=3D 0) {
> -		ret =3D si4455_change_state(port,
> -			SI4455_CMD_CHANGE_STATE_ARG_NEW_STATE_ENUM_READY);
> -		if (ret) {
> -			dev_err(port->dev,
> -				"%s: si4455_change_state error(%i)",
> -				__func__,
> -				ret);
> -			goto end;
> -		}
> -		ret =3D si4455_get_int_status(port, 0, 0, 0, &intStatus);
> -		if (ret) {
> -			dev_err(port->dev,
> -				"%s: si4455_get_int_status error(%i)",
> -				__func__,
> -				ret);
> -			goto end;
> -		}
> -		ret =3D si4455_fifo_info(port,
> -					SI4455_CMD_FIFO_INFO_ARG_TX_BIT,
> -					&fifoInfo);
> -		if (ret) {
> -			dev_err(port->dev,
> -				"%s: si4455_fifo_info error(%i)",
> -				__func__,
> -				ret);
> -			goto end;
> -		}
> -		ret =3D si4455_write_tx_fifo(port, (u16)length, data);
> -		if (ret) {
> -			dev_err(port->dev,
> -				"%s: si4455_write_tx_fifo error(%i)",
> -				__func__,
> -				ret);
> -			goto end;
> -		}
> -		ret =3D si4455_tx(port,
> -				(u8)channel,
> -				0x30,
> -				(u16)length);
> -		if (ret) {
> -			dev_err(port->dev,
> -				"%s: si4455_tx error(%i)",
> -				__func__,
> -				ret);
> -			goto end;
> -		}
> +	ret =3D si4455_change_state(port,
> +				  SI4455_CMD_CHANGE_STATE_STATE_READY);
> +	if (ret) {
> +		dev_err(port->dev, "%s: si4455_change_state error(%i)",
> +			__func__, ret);
> +		return ret;
> +	}
> +	ret =3D si4455_get_int_status(port, 0, 0, 0, &int_status);
> +	if (ret) {
> +		dev_err(port->dev, "%s: si4455_get_int_status error(%i)",
> +			__func__, ret);
> +		return ret;
> +	}
> +	ret =3D si4455_fifo_info(port,
> +			       SI4455_CMD_FIFO_INFO_ARG_TX_BIT, &fifo_info);
> +	if (ret) {
> +		dev_err(port->dev, "%s: si4455_fifo_info error(%i)",
> +			__func__, ret);
> +		return ret;
> +	}
> +	ret =3D si4455_write_tx_fifo(port, (u16)length, data);
> +	if (ret) {
> +		dev_err(port->dev, "%s: si4455_write_tx_fifo error(%i)",
> +			__func__, ret);
> +		return ret;
> +	}
> +	ret =3D si4455_tx(port, channel, 0x30, length);
> +	if (ret) {
> +		dev_err(port->dev, "%s: si4455_tx error(%i)",
> +			__func__, ret);
> +		return ret;
>  	}
> -end:
>  	return ret;

This is now "return 0;" which is nice because it means you can see it
is the success path.

>  }
>  =

>  static int si4455_end_tx(struct uart_port *port)
>  {
>  	int ret =3D 0;
> -	struct si4455_int_status intStatus =3D { 0 };
> +	struct si4455_int_status int_status =3D { 0 };
>  =

>  	ret =3D si4455_change_state(port,
> -			SI4455_CMD_CHANGE_STATE_ARG_NEW_STATE_ENUM_READY);
> +				  SI4455_CMD_CHANGE_STATE_STATE_READY);
>  	if (ret) {
> -		dev_err(port->dev,
> -			"%s: si4455_change_state error(%i)",
> -			__func__,
> -			ret);
> -		goto end;
> +		dev_err(port->dev, "%s: si4455_change_state error(%i)",
> +			__func__, ret);
> +		return ret;
>  	}
> -	ret =3D si4455_get_int_status(port, 0, 0, 0, &intStatus);
> +	ret =3D si4455_get_int_status(port, 0, 0, 0, &int_status);
>  	if (ret) {
> -		dev_err(port->dev,
> -			"%s: si4455_get_int_status error(%i)",
> -			__func__,
> -			ret);
> -		goto end;
> +		dev_err(port->dev, "%s: si4455_get_int_status error(%i)",
> +			__func__, ret);
> +		return ret;
>  	}
> -end:
>  	return ret;

return 0;

>  }
>  =

> @@ -662,43 +577,36 @@ static int si4455_begin_rx(struct uart_port *port,
>  				u32 length)
>  {
>  	int ret =3D 0;
> -	struct si4455_int_status intStatus =3D { 0 };
> -	struct si4455_fifo_info fifoInfo =3D { 0 };
> +	struct si4455_int_status int_status =3D { 0 };
> +	struct si4455_fifo_info fifo_info =3D { 0 };
>  =

>  	dev_dbg(port->dev, "%s(%u, %u)", __func__, channel, length);
> -	ret =3D si4455_get_int_status(port, 0, 0, 0, &intStatus);
> +	ret =3D si4455_get_int_status(port, 0, 0, 0, &int_status);
>  	if (ret) {
> -		dev_err(port->dev,
> -			"%s: si4455_get_int_status error(%i)",
> -			__func__,
> -			ret);
> -		goto end;
> +		dev_err(port->dev, "%s: si4455_get_int_status error(%i)",
> +			__func__, ret);
> +		return ret;
>  	}
>  	ret =3D si4455_fifo_info(port,
>  				SI4455_CMD_FIFO_INFO_ARG_RX_BIT,
> -				&fifoInfo);
> +				&fifo_info);
>  	if (ret) {
> -		dev_err(port->dev,
> -			"%s: si4455_fifo_info error(%i)",
> -			__func__,
> -			ret);
> -		goto end;
> +		dev_err(port->dev, "%s: si4455_fifo_info error(%i)",
> +			__func__, ret);
> +		return ret;
>  	}
>  	ret =3D si4455_rx(port,
>  			channel,
>  			0x00,
>  			length,
> -			SI4455_CMD_START_RX_ARG_RXTIMEOUT_STATE_ENUM_RX,
> -			SI4455_CMD_START_RX_ARG_RXVALID_STATE_ENUM_RX,
> -			SI4455_CMD_START_RX_ARG_RXINVALID_STATE_ENUM_RX);
> +			SI4455_CMD_START_RX_RXTIMEOUT_STATE_RX,
> +			SI4455_CMD_START_RX_RXVALID_STATE_RX,
> +			SI4455_CMD_START_RX_RXINVALID_STATE_RX);
>  	if (ret) {
> -		dev_err(port->dev,
> -			"%s: si4455_rx error(%i)",
> -			__func__,
> -			ret);
> -		goto end;
> +		dev_err(port->dev, "%s: si4455_rx error(%i)",
> +			__func__, ret);
> +		return ret;
>  	}
> -end:
>  	return ret;

return 0;

>  }
>  =

> @@ -710,59 +618,53 @@ static int si4455_end_rx(struct uart_port *port,
>  }
>  =

>  static int si4455_configure(struct uart_port *port,
> -				u8 *configurationData)
> +				u8 *configuration_data)
>  {
>  	int ret =3D 0;
>  	u8 col;
>  	u8 response;
> -	u8 numOfBytes;
> -	struct si4455_int_status intStatus =3D { 0 };
> -	u8 radioCmd[16u];
> +	u8 count;
> +	struct si4455_int_status int_status =3D { 0 };
> +	u8 radio_cmd[16u];
>  =

>  	/* While cycle as far as the pointer points to a command */
> -	while (*configurationData !=3D 0x00) {
> +	while (*configuration_data !=3D 0x00) {
>  		/* Commands structure in the array:
>  		 * --------------------------------
>  		 * LEN | <LEN length of data>
>  		 */
> -		numOfBytes =3D *configurationData++;
> -		dev_dbg(port->dev,
> -			"%s: numOfBytes(%u)",
> -			__func__,
> -			numOfBytes);
> -		if (numOfBytes > 16u) {
> +		count =3D *configuration_data++;
> +		dev_dbg(port->dev, "%s: count(%u)",
> +			__func__, count);
> +		if (count > 16u) {
>  			/* Initial configuration of Si4x55 */
>  			if (SI4455_CMD_ID_WRITE_TX_FIFO
> -				 =3D=3D *configurationData) {
> -				if (numOfBytes > 128u) {
> +				 =3D=3D *configuration_data) {
> +				if (count > 128u) {
>  					/* Number of command bytes exceeds
>  					 * maximal allowable length
>  					 */
> -					dev_err(port->dev,
> -						"%s: command length error(%i)",
> -						__func__,
> -						numOfBytes);
> +					dev_err(port->dev, "%s: command length error(%i)",
> +						__func__, count);
>  					ret =3D -EINVAL;
>  					break;
>  				}
>  =

>  				/* Load array to the device */
> -				configurationData++;
> +				configuration_data++;
>  				ret =3D si4455_write_data(port,
>  						SI4455_CMD_ID_WRITE_TX_FIFO,
>  						1,
> -						numOfBytes - 1,
> -						configurationData);
> +						count - 1,
> +						configuration_data);
>  				if (ret) {
> -					dev_err(port->dev,
> -						"%s: si4455_write_data error(%i)",
> -						__func__,
> -						ret);
> +					dev_err(port->dev, "%s: si4455_write_data error(%i)",
> +						__func__, ret);
>  					break;
>  				}
>  =

>  				/* Point to the next command */
> -				configurationData +=3D numOfBytes - 1;
> +				configuration_data +=3D count - 1;
>  =

>  				/* Continue command interpreter */
>  				continue;
> @@ -775,52 +677,41 @@ static int si4455_configure(struct uart_port *port,
>  			}
>  		}
>  =

> -		for (col =3D 0u; col < numOfBytes; col++) {
> -			radioCmd[col] =3D *configurationData;
> -			configurationData++;
> +		for (col =3D 0u; col < count; col++) {
> +			radio_cmd[col] =3D *configuration_data;
> +			configuration_data++;
>  		}
>  =

> -		dev_dbg(port->dev,
> -			"%s: radioCmd[0](%u)",
> -			__func__,
> -			radioCmd[0]);
> -		ret =3D si4455_send_command_get_response(port,
> -							numOfBytes,
> -							radioCmd,
> -							1,
> -							&response);
> +		dev_dbg(port->dev, "%s: radio_cmd[0](%u)", __func__, radio_cmd[0]);
> +		ret =3D si4455_send_command_get_response(port, count, radio_cmd,
> +						       1, &response);
>  		if (ret) {
>  			dev_err(port->dev,
>  				"%s: si4455_send_command_get_response error(%i)",
> -				__func__,
> -				ret);
> +				__func__, ret);
>  			break;
>  		}
>  =

>  		/* Check response byte of EZCONFIG_CHECK command */
> -		if (radioCmd[0] =3D=3D SI4455_CMD_ID_EZCONFIG_CHECK) {
> +		if (radio_cmd[0] =3D=3D SI4455_CMD_ID_EZCONFIG_CHECK) {
>  			if (response) {
>  				/* Number of command bytes exceeds
>  				 * maximal allowable length
>  				 */
>  				ret =3D -EIO;
> -				dev_err(port->dev,
> -					"%s: EZConfig check error(%i)",
> -					__func__,
> -					radioCmd[0]);
> +				dev_err(port->dev, "%s: EZConfig check error(%i)",
> +					__func__, radio_cmd[0]);
>  				break;
>  			}
>  		}
>  =

>  		/* Get and clear all interrupts.  An error has occurred... */
> -		si4455_get_int_status(port, 0, 0, 0, &intStatus);
> -		if (intStatus.CHIP_PEND
> -			& SI4455_CMD_GET_CHIP_STATUS_REP_CMD_ERROR_PEND_MASK) {
> +		si4455_get_int_status(port, 0, 0, 0, &int_status);
> +		if (int_status.CHIP_PEND
> +			& SI4455_CMD_GET_CHIP_STATUS_ERROR_PEND_MASK) {
>  			ret =3D -EIO;
> -			dev_err(port->dev,
> -				"%s: chip error(%i)",
> -				__func__,
> -				intStatus.CHIP_PEND);
> +			dev_err(port->dev, "%s: chip error(%i)",
> +				__func__, int_status.CHIP_PEND);
>  			break;
>  		}
>  	}
> @@ -969,34 +860,34 @@ static irqreturn_t si4455_port_irq(struct si4455_po=
rt *s)
>  {
>  	struct uart_port *port =3D &s->one.port;
>  	irqreturn_t ret =3D IRQ_NONE;
> -	struct si4455_int_status intStatus =3D { 0 };
> -	struct si4455_fifo_info fifoInfo =3D { 0 };
> +	struct si4455_int_status int_status =3D { 0 };
> +	struct si4455_fifo_info fifo_info =3D { 0 };
>  =

>  	mutex_lock(&s->mutex);
>  	if (s->configured && (s->power_count > 0)) {
> -		if (!si4455_get_int_status(port, 0, 0, 0, &intStatus)) {
> +		if (!si4455_get_int_status(port, 0, 0, 0, &int_status)) {
>  			si4455_get_modem_status(port, 0, &s->modem_status);
> -			if (intStatus.CHIP_PEND
> -			& SI4455_CMD_GET_CHIP_STATUS_REP_CMD_ERROR_PEND_BIT) {
> +			if (int_status.CHIP_PEND
> +			    & SI4455_CMD_GET_CHIP_STATUS_ERROR_PEND_BIT) {
>  				dev_err(port->dev,
>  					"%s: CHIP_STATUS:CMD_ERROR_PEND",
>  					__func__);
> -			} else if (intStatus.PH_PEND
> -			& SI4455_CMD_GET_INT_STATUS_REP_PACKET_SENT_PEND_BIT) {
> +			} else if (int_status.PH_PEND
> +				   & SI4455_CMD_GET_INT_STATUS_PACKET_SENT_PEND_BIT) {
>  				dev_dbg(port->dev,
>  					"%s: PH_STATUS:PACKET_SENT_PEND",
>  					__func__);
>  				si4455_handle_tx_pend(s);
> -			} else if (intStatus.PH_PEND
> -			& SI4455_CMD_GET_INT_STATUS_REP_PACKET_RX_PEND_BIT) {
> +			} else if (int_status.PH_PEND
> +				   & SI4455_CMD_GET_INT_STATUS_PACKET_RX_PEND_BIT) {
>  				dev_dbg(port->dev,
>  					"%s: PH_STATUS:PACKET_RX_PEND",
>  					__func__);
>  				s->current_rssi =3D s->modem_status.CURR_RSSI;
> -				si4455_fifo_info(port, 0, &fifoInfo);
> +				si4455_fifo_info(port, 0, &fifo_info);
>  				si4455_handle_rx_pend(s);
> -			} else if (intStatus.PH_PEND
> -			& SI4455_CMD_GET_INT_STATUS_REP_CRC_ERROR_BIT) {
> +			} else if (int_status.PH_PEND
> +				   & SI4455_CMD_GET_INT_STATUS_CRC_ERROR_BIT) {
>  				dev_dbg(port->dev,
>  					"%s: PH_STATUS:CRC_ERROR_PEND",
>  					__func__);
> @@ -1049,12 +940,6 @@ static void si4455_set_mctrl(struct uart_port *port,
>  	dev_dbg(port->dev, "%s", __func__);
>  }
>  =

> -static void si4455_break_ctl(struct uart_port *port,
> -				int break_state)
> -{
> -	dev_dbg(port->dev, "%s", __func__);
> -}
> -
>  static void si4455_set_termios(struct uart_port *port,
>  				struct ktermios *termios,
>  				struct ktermios *old)
> @@ -1062,14 +947,6 @@ static void si4455_set_termios(struct uart_port *po=
rt,
>  	dev_dbg(port->dev, "%s", __func__);
>  }
>  =

> -static int si4455_rs485_config(struct uart_port *port,
> -				struct serial_rs485 *rs485)
> -{
> -	dev_dbg(port->dev, "%s", __func__);
> -
> -	return 0;
> -}
> -
>  static int si4455_startup(struct uart_port *port)
>  {
>  	dev_dbg(port->dev, "%s", __func__);
> @@ -1087,21 +964,14 @@ static const char *si4455_type(struct uart_port *p=
ort)
>  {
>  	struct si4455_port *s =3D dev_get_drvdata(port->dev);
>  =

> -	if (port->type =3D=3D PORT_SI4455) {
> -		if (s->part_info.ROMID =3D=3D 3)
> -			return "SI4455-B1A";
> -		else if (s->part_info.ROMID =3D=3D 6)
> -			return "SI4455-C2A";
> -
> -	}
> -	return NULL;
> -}
> +	if (port->type !=3D PORT_SI4455)
> +		return NULL;
> +	if (s->part_info.ROMID =3D=3D 3)
> +		return "SI4455-B1A";
> +	else if (s->part_info.ROMID =3D=3D 6)
> +		return "SI4455-C2A";
>  =

> -static int si4455_request_port(struct uart_port *port)
> -{
> -	/* Do nothing */
> -	dev_dbg(port->dev, "%s", __func__);
> -	return 0;
> +	return "SI4455(UNKNOWN-REV)";
>  }
>  =

>  static void si4455_config_port(struct uart_port *port,
> @@ -1142,93 +1012,77 @@ static int si4455_ioctl(struct uart_port *port,
>  			unsigned long arg)
>  {
>  	struct si4455_port *s =3D dev_get_drvdata(port->dev);
> +	void __user *argp =3D (void *)arg;
>  	int ret =3D 0;
>  =

>  	dev_dbg(port->dev, "%s(%u)", __func__, cmd);
>  	switch (cmd) {
>  	case SI4455_IOC_SEZC:
> -	memcpy(&s->configuration, (void *)arg, sizeof(s->configuration));
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_SEZC, length(%i)",
> -		__func__,
> -		cmd,
> -		s->configuration.length);
> -	ret =3D si4455_re_configure(port);
> +		ret =3D copy_from_user(&s->configuration, argp, sizeof(s->configuratio=
n));
> +		if (ret) {
> +			dev_err(port->dev, "%s: SI4455_IOC_SEZC: copy_from_user_error(%i)",
> +				__func__, ret);
> +			return -EIO;


This isn't right.  Don't allow a malitious user to spam dmesg with error
messages.  Return -EFAULT if copy_from_user() fails.

	if (copy_from_user(&s->configuration, argp, sizeof(s->configuration)))
		return -EFAULT;




> +		}
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_SEZC, length(%i)",
> +			__func__, cmd, s->configuration.length);
> +		ret =3D si4455_re_configure(port);
>  	break;
>  	case SI4455_IOC_CEZC:
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_CEZC",
> -		__func__,
> -		cmd);
> -	memset(&s->configuration, 0x00, sizeof(s->configuration));
> -	ret =3D si4455_re_configure(port);
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_CEZC",
> +			__func__, cmd);
> +		memset(&s->configuration, 0x00, sizeof(s->configuration));
> +		ret =3D si4455_re_configure(port);
>  	break;
>  	case SI4455_IOC_SEZP:
> -	memcpy(&s->patch, (void *)arg, sizeof(s->patch));
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_SEZP, length(%i)",
> -		__func__,
> -		cmd,
> -		s->configuration.length);
> +		ret =3D copy_from_user(&s->patch, argp, sizeof(s->patch));
> +		if (ret) {
> +			dev_err(port->dev, "%s: SI4455_IOC_SEZP: copy_from_user_error(%i)",
> +				__func__, ret);
> +			return -EIO;
> +		}
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_SEZP, length(%i)",
> +			__func__, cmd, s->configuration.length);
>  	break;
>  	case SI4455_IOC_CEZP:
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_CEZP",
> -		__func__,
> -		cmd);
> -	memset(&s->patch, 0x00, sizeof(s->patch));
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_CEZP",
> +			__func__, cmd);
> +		memset(&s->patch, 0x00, sizeof(s->patch));
>  	break;
>  	case SI4455_IOC_STXC:
> -	s->tx_channel =3D *((u32 *)arg);
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_STXC, tx_channel(%i)",
> -		__func__,
> -		cmd,
> -		s->tx_channel);
> +		s->tx_channel =3D *((u32 *)arg);

No.  Any use of arg after the argp assignment in this function is a
security problem.  All accesses of "argp" need to use copy_to/from_user
or get/put_user().

> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_STXC, tx_channel(%i)",
> +			__func__, cmd, s->tx_channel);
>  	break;
>  	case SI4455_IOC_GTXC:
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_GTXC",
> -		__func__,
> -		cmd);
> -	*((u32 *)arg) =3D s->tx_channel;
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_GTXC",
> +			__func__, cmd);
> +		*((u32 *)arg) =3D s->tx_channel;
>  	break;
>  	case SI4455_IOC_SRXC:
> -	s->rx_channel =3D *((u32 *)arg);
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_SRXC, rx_channel(%i)",
> -		__func__,
> -		cmd,
> -		s->rx_channel);
> +		s->rx_channel =3D *((u32 *)arg);
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_SRXC, rx_channel(%i)",
> +			__func__, cmd, s->rx_channel);
>  	break;
>  	case SI4455_IOC_GRXC:
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_GRXC",
> -		__func__,
> -		cmd);
> -	*((u32 *)arg) =3D s->rx_channel;
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_GRXC",
> +			__func__, cmd);
> +		*((u32 *)arg) =3D s->rx_channel;
>  	break;
>  	case SI4455_IOC_SSIZ:
> -	s->package_size =3D *((u32 *)arg);
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_SSIZ, package_size(%i)",
> -		__func__,
> -		cmd,
> -		s->package_size);
> +		s->package_size =3D *((u32 *)arg);
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_SSIZ, package_size(%i)",
> +			__func__, cmd, s->package_size);
>  	break;
>  	case SI4455_IOC_GSIZ:
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_GSIZ",
> -		__func__,
> -		cmd);
> -	*((u32 *)arg) =3D s->package_size;
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_GSIZ",
> +			__func__, cmd);
> +		*((u32 *)arg) =3D s->package_size;
>  	break;
>  	case SI4455_IOC_GRSSI:
> -	dev_dbg(port->dev,
> -		"%s(%u): SI4455_IOC_GRSSI",
> -		__func__,
> -		cmd);
> -	*((u32 *)arg) =3D s->current_rssi;
> +		dev_dbg(port->dev, "%s(%u): SI4455_IOC_GRSSI",
> +			__func__, cmd);
> +		*((u32 *)arg) =3D s->current_rssi;
>  	break;
>  	default:
>  		ret =3D -ENOIOCTLCMD;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
